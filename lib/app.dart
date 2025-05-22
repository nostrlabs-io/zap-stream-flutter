import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:zap_stream_flutter/const.dart';
import 'package:zap_stream_flutter/i18n/strings.g.dart';
import 'package:zap_stream_flutter/pages/category.dart';
import 'package:zap_stream_flutter/pages/hashtag.dart';
import 'package:zap_stream_flutter/pages/home.dart';
import 'package:zap_stream_flutter/pages/login.dart';
import 'package:zap_stream_flutter/pages/login_input.dart';
import 'package:zap_stream_flutter/pages/new_account.dart';
import 'package:zap_stream_flutter/pages/profile.dart';
import 'package:zap_stream_flutter/pages/settings_profile.dart';
import 'package:zap_stream_flutter/pages/stream.dart';
import 'package:zap_stream_flutter/theme.dart';
import 'package:zap_stream_flutter/utils.dart';
import 'package:zap_stream_flutter/widgets/header.dart';

void runZapStream() {
  runApp(
    MaterialApp.router(
      title: "zap.stream",
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      theme: ThemeData.localize(
        ThemeData(colorScheme: ColorScheme.dark(), highlightColor: PRIMARY_1),
        TextTheme(),
      ),
      routerConfig: GoRouter(
        routes: [
          ShellRoute(
            observers: [routeObserver],
            builder:
                (context, state, child) => SafeArea(
                  child: Scaffold(body: child, backgroundColor: Colors.black),
                ),
            routes: [
              GoRoute(path: "/", builder: (ctx, state) => HomePage()),
              ShellRoute(
                builder: (context, state, child) {
                  return Container(
                    margin: EdgeInsets.only(top: 50),
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 20,
                      children: [
                        Center(
                          child: Image.asset("assets/logo.png", height: 150),
                        ),
                        child,
                      ],
                    ),
                  );
                },
                routes: [
                  GoRoute(
                    path: "/login",
                    builder: (ctx, state) => LoginPage(),
                    routes: [
                      GoRoute(
                        path: "key",
                        builder: (ctx, state) => LoginInputPage(),
                      ),
                      GoRoute(
                        path: "new",
                        builder: (context, state) => NewAccountPage(),
                      ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                path: StreamPage.path,
                builder: (ctx, state) {
                  if (state.extra is StreamEvent) {
                    return StreamPage(stream: state.extra as StreamEvent);
                  } else {
                    return StreamPage.loader(state.pathParameters["id"]!);
                  }
                },
              ),
              GoRoute(
                path: "/p/:id",
                builder: (ctx, state) {
                  return ProfilePage(pubkey: state.pathParameters["id"]!);
                },
              ),
              GoRoute(
                path: "/t/:id",
                builder: (context, state) {
                  return HashtagPage(tag: state.pathParameters["id"]!);
                },
              ),
              GoRoute(
                path: "/category/:id",
                builder: (context, state) {
                  return CategoryPage(
                    category: state.pathParameters["id"]!,
                    info: state.extra as GameInfo?,
                  );
                },
              ),
              ShellRoute(
                observers: [routeObserver],
                builder:
                    (context, state, child) =>
                        Column(children: [HeaderWidget(), child]),
                routes: [
                  GoRoute(
                    path: "/settings",
                    builder: (context, state) => SizedBox(),
                    routes: [
                      GoRoute(
                        path: "profile",
                        builder: (context, state) => SettingsProfilePage(),
                      ),
                    ],
                  ),
                ],
              ),
              GoRoute(
                path: "/:id",
                redirect: (context, state) {
                  final id = state.pathParameters["id"]!;
                  if (id.startsWith("naddr1") ||
                      id.startsWith("nevent1") ||
                      id.startsWith("note1")) {
                    return "/e/$id";
                  } else if (id.startsWith("npub1") ||
                      id.startsWith("nprofile1")) {
                    return "/p/$id";
                  }
                  return null;
                },
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
