import 'dart:convert';
import 'dart:developer' as developer;

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;
import 'package:ndk/ndk.dart';
import 'package:zap_stream_flutter/const.dart';

class IngestEndpoint {
  final String name;
  final String url;
  final String key;
  final IngestCost cost;
  final List<String> capabilities;

  const IngestEndpoint({
    required this.name,
    required this.url,
    required this.key,
    required this.cost,
    required this.capabilities,
  });

  static IngestEndpoint fromJson(Map<String, dynamic> json) {
    return IngestEndpoint(
      name: json["name"],
      url: json["url"],
      key: json["key"],
      cost: IngestCost.fromJson(json["cost"]),
      capabilities: List<String>.from(json["capabilities"]),
    );
  }

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) {
    if (other is IngestEndpoint) {
      return other.name == name;
    }
    return false;
  }
}

class IngestCost {
  final String unit;
  final double rate;

  const IngestCost({required this.unit, required this.rate});

  static IngestCost fromJson(Map<String, dynamic> json) {
    return IngestCost(unit: json["unit"], rate: json["rate"]);
  }
}

class TosAccepted {
  final bool accepted;
  final String? link;

  const TosAccepted({required this.accepted, required this.link});

  static TosAccepted fromJson(Map<String, dynamic> json) {
    return TosAccepted(accepted: json["accepted"], link: json["link"]);
  }
}

class AccountInfo {
  final double balance;
  final List<IngestEndpoint> endpoints;
  final TosAccepted tos;
  final EventInfo? details;

  const AccountInfo({
    required this.balance,
    required this.endpoints,
    required this.tos,
    this.details,
  });

  static AccountInfo fromJson(Map<String, dynamic> json) {
    final balance = json["balance"] as int;
    final endpoints = json["endpoints"] as Iterable<dynamic>;
    return AccountInfo(
      balance: balance.toDouble(),
      endpoints: endpoints.map((e) => IngestEndpoint.fromJson(e)).toList(),
      tos: TosAccepted.fromJson(json["tos"]),
      details:
          json.containsKey("details")
              ? EventInfo.fromJson(json["details"])
              : null,
    );
  }
}

class EventInfo {
  final String? id;
  final String? title;
  final String? summary;
  final String? image;
  final String? contentWarning;
  final String? goal;
  final List<String>? tags;

  EventInfo({
    required this.id,
    required this.title,
    required this.summary,
    required this.image,
    required this.contentWarning,
    required this.goal,
    required this.tags,
  });

  static EventInfo fromJson(Map<String, dynamic> json) {
    return EventInfo(
      id: json["id"],
      title: json["title"],
      summary: json["summary"],
      image: json["image"],
      contentWarning: json["content_warning"],
      goal: json["goal"],
      tags: json.containsKey("tags") ? List<String>.from(json["tags"]) : null,
    );
  }
}

class ZapStreamApi {
  final String base;
  final EventSigner signer;

  ZapStreamApi(this.base, this.signer);

  static ZapStreamApi instance() {
    return ZapStreamApi(apiUrl, ndk.accounts.getLoggedAccount()!.signer);
  }

  Future<AccountInfo> getAccountInfo() async {
    final url = "$base/account";
    final rsp = await _sendGetRequest(url);
    return AccountInfo.fromJson(JsonCodec().decode(rsp.body));
  }

  Future<void> updateDefaultStreamInfo({
    String? id,
    String? title,
    String? summary,
    String? image,
    String? contentWarning,
    String? goal,
    List<String>? tags,
  }) async {
    final url = "$base/event";
    await _sendPatchRequest(
      url,
      body: {
        "id": id,
        "title": title,
        "summary": summary,
        "image": image,
        "content_warning": contentWarning,
        "goal": goal,
        "tags": tags,
      },
    );
  }

  Future<void> acceptTos() async {
    await _sendPatchRequest("$base/account", body: {"accept_tos": true});
  }

  Future<http.Response> _sendPatchRequest(String url, {Object? body}) async {
    final jsonBody = body != null ? JsonCodec().encode(body) : null;
    final auth = await _makeAuth("PATCH", url, body: jsonBody);
    final rsp = await http
        .patch(
          Uri.parse(url),
          body: jsonBody,
          headers: {
            "authorization": "Nostr $auth",
            "accept": "application/json",
            "content-type": "application/json",
          },
        )
        .timeout(Duration(seconds: 10));
    developer.log(rsp.body);
    return rsp;
  }

  Future<http.Response> _sendPutRequest(String url, {Object? body}) async {
    final jsonBody = body != null ? JsonCodec().encode(body) : null;
    final auth = await _makeAuth("PUT", url, body: jsonBody);
    final rsp = await http
        .put(
          Uri.parse(url),
          body: jsonBody,
          headers: {
            "authorization": "Nostr $auth",
            "accept": "application/json",
            "content-type": "application/json",
          },
        )
        .timeout(Duration(seconds: 10));
    developer.log(rsp.body);
    return rsp;
  }

  Future<http.Response> _sendGetRequest(String url, {Object? body}) async {
    final jsonBody = body != null ? JsonCodec().encode(body) : null;
    final auth = await _makeAuth("GET", url, body: jsonBody);
    final rsp = await http
        .get(
          Uri.parse(url),
          headers: {
            "authorization": "Nostr $auth",
            "accept": "application/json",
            "content-type": "application/json",
          },
        )
        .timeout(Duration(seconds: 10));
    developer.log(rsp.body);
    return rsp;
  }

  Future<http.Response> _sendDeleteRequest(String url, {Object? body}) async {
    final jsonBody = body != null ? JsonCodec().encode(body) : null;
    final auth = await _makeAuth("DELETE", url, body: jsonBody);
    final rsp = await http
        .delete(
          Uri.parse(url),
          headers: {
            "authorization": "Nostr $auth",
            "accept": "application/json",
            "content-type": "application/json",
          },
        )
        .timeout(Duration(seconds: 10));
    developer.log(rsp.body);
    return rsp;
  }

  Future<String> _makeAuth(String method, String url, {String? body}) async {
    final pubkey = signer.getPublicKey();
    var tags = [
      ["u", url],
      ["method", method],
    ];
    if (body != null) {
      final hash = hex.encode(sha256.convert(utf8.encode(body)).bytes);
      tags.add(["payload", hash]);
    }
    final authEvent = Nip01Event(
      pubKey: pubkey,
      kind: 27235,
      tags: tags,
      content: "",
    );
    await signer.sign(authEvent);
    return authEvent.toBase64();
  }
}
