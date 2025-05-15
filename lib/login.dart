import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter/widgets.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ndk/domain_layer/entities/account.dart';
import 'package:ndk/shared/nips/nip01/bip340.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';
import 'package:zap_stream_flutter/utils.dart';

class LoginAccount {
  final AccountType type;
  final String pubkey;
  final String? privateKey;
  final List<String>? signerRelays;

  LoginAccount._({
    required this.type,
    required this.pubkey,
    this.privateKey,
    this.signerRelays,
  });

  static LoginAccount nip19(String key) {
    final keyData = bech32ToHex(key);
    final pubkey =
        Nip19.isKey("nsec", key) ? Bip340.getPublicKey(keyData) : keyData;
    final privateKey = Nip19.isKey("npub", key) ? null : keyData;
    return LoginAccount._(
      type:
          Nip19.isKey("npub", key)
              ? AccountType.publicKey
              : AccountType.privateKey,
      pubkey: pubkey,
      privateKey: privateKey,
    );
  }

  static LoginAccount privateKeyHex(String key) {
    return LoginAccount._(
      type: AccountType.privateKey,
      privateKey: key,
      pubkey: Bip340.getPublicKey(key),
    );
  }

  static LoginAccount externalPublicKeyHex(String key) {
    return LoginAccount._(type: AccountType.externalSigner, pubkey: key);
  }

  static LoginAccount bunker(
    String privateKey,
    String pubkey,
    List<String> relays,
  ) {
    return LoginAccount._(
      type: AccountType.externalSigner,
      pubkey: pubkey,
      privateKey: privateKey,
      signerRelays: relays,
    );
  }

  static Map<String, dynamic> toJson(LoginAccount? acc) => {
    "type": acc?.type.name,
    "pubKey": acc?.pubkey,
    "privateKey": acc?.privateKey,
  };

  static LoginAccount? fromJson(Map<String, dynamic> json) {
    if (json.length > 2 && json.containsKey("pubKey")) {
      if ((json["pubKey"] as String).length != 64) {
        throw "Invalid pubkey, length != 64";
      }
      if (json.containsKey("privateKey")) {
        final privKey = json["privateKey"] as String?;
        if (privKey != null && privKey.length != 64) {
          throw "Invalid privateKey, length != 64";
        }
      }
      return LoginAccount._(
        type: AccountType.values.firstWhere(
          (v) => v.toString().endsWith(json["type"] as String),
        ),
        pubkey: json["pubKey"],
        privateKey: json["privateKey"],
      );
    }
    return null;
  }
}

class LoginData extends ValueNotifier<LoginAccount?> {
  final _storage = FlutterSecureStorage();
  static const String _storageKey = "accounts";

  LoginData() : super(null) {
    super.addListener(() async {
      if (value != null) {
        final data = json.encode(LoginAccount.toJson(value));
        await _storage.write(key: _storageKey, value: data);
      } else {
        await _storage.delete(key: _storageKey);
      }
    });
  }

  void logout() {
    super.value = null;
  }

  Future<void> load() async {
    final acc = await _storage.read(key: _storageKey);
    if (acc?.isNotEmpty ?? false) {
      try {
        super.value = LoginAccount.fromJson(json.decode(acc!));
      } catch (e) {
        developer.log(e.toString());
      }
    }
  }
}
