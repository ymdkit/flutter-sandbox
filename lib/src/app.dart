import 'package:flutter/material.dart';
import 'package:sandbox/src/app_route.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
