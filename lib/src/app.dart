import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sandbox/src/sample_feature/sample_item_list_view.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  final GoRouter _router = GoRouter(routes: $appRoutes, redirect: (state) {
    return state.location == '/' ? const SampleListItemRoute().location : null;
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      restorationScopeId: 'app',
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
