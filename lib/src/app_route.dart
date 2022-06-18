import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/src/container_screen.dart';
import 'package:sandbox/src/paging_feature/paging_item_list_view.dart';
import 'package:sandbox/src/sample_feature/sample_item_details_view.dart';
import 'package:sandbox/src/sample_feature/sample_item_list_view.dart';

part 'app_route.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: ContainerPage,
      children: [
        AutoRoute(
          path: 'items',
          name: 'ItemsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: SampleItemListPage,
            ),
            AutoRoute(
              path: ':id',
              page: SampleItemDetailsPage,
            ),
          ],
        ),
        AutoRoute(
          path: 'paging_items',
          name: 'PagingItemsRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(
              path: '',
              page: PagingItemListPage,
            ),
            AutoRoute(
              path: ':id',
              page: SampleItemDetailsPage,
            ),
          ],
        ),
      ],
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
