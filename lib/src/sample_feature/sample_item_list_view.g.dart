// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_item_list_view.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $sampleListItemRoute,
    ];

GoRoute get $sampleListItemRoute => GoRouteData.$route(
      path: '/items',
      factory: $SampleListItemRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':id',
          factory: $SampleItemDetailsRouteExtension._fromState,
        ),
      ],
    );

extension $SampleListItemRouteExtension on SampleListItemRoute {
  static SampleListItemRoute _fromState(GoRouterState state) =>
      const SampleListItemRoute();

  String get location => GoRouteData.$location(
        '/items',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $SampleItemDetailsRouteExtension on SampleItemDetailsRoute {
  static SampleItemDetailsRoute _fromState(GoRouterState state) =>
      SampleItemDetailsRoute(
        int.parse(state.params['id']!),
      );

  String get location => GoRouteData.$location(
        '/items/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
