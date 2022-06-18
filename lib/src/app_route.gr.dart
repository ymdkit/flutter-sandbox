// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_route.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    ContainerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ContainerPage());
    },
    ItemsRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    PagingItemsRouter.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const EmptyRouterPage());
    },
    SampleItemListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SampleItemListPage());
    },
    SampleItemDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SampleItemDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: SampleItemDetailsPage(key: args.key, id: args.id));
    },
    PagingItemListRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PagingItemListPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(ContainerRoute.name, path: '/', children: [
          RouteConfig(ItemsRouter.name,
              path: 'items',
              parent: ContainerRoute.name,
              children: [
                RouteConfig(SampleItemListRoute.name,
                    path: '', parent: ItemsRouter.name),
                RouteConfig(SampleItemDetailsRoute.name,
                    path: ':id', parent: ItemsRouter.name)
              ]),
          RouteConfig(PagingItemsRouter.name,
              path: 'paging_items',
              parent: ContainerRoute.name,
              children: [
                RouteConfig(PagingItemListRoute.name,
                    path: '', parent: PagingItemsRouter.name),
                RouteConfig(SampleItemDetailsRoute.name,
                    path: ':id', parent: PagingItemsRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [ContainerPage]
class ContainerRoute extends PageRouteInfo<void> {
  const ContainerRoute({List<PageRouteInfo>? children})
      : super(ContainerRoute.name, path: '/', initialChildren: children);

  static const String name = 'ContainerRoute';
}

/// generated route for
/// [EmptyRouterPage]
class ItemsRouter extends PageRouteInfo<void> {
  const ItemsRouter({List<PageRouteInfo>? children})
      : super(ItemsRouter.name, path: 'items', initialChildren: children);

  static const String name = 'ItemsRouter';
}

/// generated route for
/// [EmptyRouterPage]
class PagingItemsRouter extends PageRouteInfo<void> {
  const PagingItemsRouter({List<PageRouteInfo>? children})
      : super(PagingItemsRouter.name,
            path: 'paging_items', initialChildren: children);

  static const String name = 'PagingItemsRouter';
}

/// generated route for
/// [SampleItemListPage]
class SampleItemListRoute extends PageRouteInfo<void> {
  const SampleItemListRoute() : super(SampleItemListRoute.name, path: '');

  static const String name = 'SampleItemListRoute';
}

/// generated route for
/// [SampleItemDetailsPage]
class SampleItemDetailsRoute extends PageRouteInfo<SampleItemDetailsRouteArgs> {
  SampleItemDetailsRoute({Key? key, required int id})
      : super(SampleItemDetailsRoute.name,
            path: ':id', args: SampleItemDetailsRouteArgs(key: key, id: id));

  static const String name = 'SampleItemDetailsRoute';
}

class SampleItemDetailsRouteArgs {
  const SampleItemDetailsRouteArgs({this.key, required this.id});

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'SampleItemDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [PagingItemListPage]
class PagingItemListRoute extends PageRouteInfo<void> {
  const PagingItemListRoute() : super(PagingItemListRoute.name, path: '');

  static const String name = 'PagingItemListRoute';
}
