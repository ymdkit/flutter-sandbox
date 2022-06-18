import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'sample_item.dart';
import 'sample_item_details_view.dart';

part 'sample_item_list_view.g.dart';

@TypedGoRoute<SampleListItemRoute>(
  path: '/items',
  routes: [
    TypedGoRoute<SampleItemDetailsRoute>(path: ':id'),
  ],
)
class SampleListItemRoute extends GoRouteData {
  const SampleListItemRoute();

  @override
  Widget build(BuildContext context) => const SampleItemListView();
}

class SampleItemListView extends HookConsumerWidget {
  const SampleItemListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureItems = ref.watch(itemsProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sample Items'),
        ),
        body: futureItems.when(
          data: (items) => RefreshIndicator(
            onRefresh: () => ref.refresh(itemsProvider.future),
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final item = items[index];
                return ListTile(
                    title: Text('SampleItem ${item.id}'),
                    leading: const CircleAvatar(
                      foregroundImage:
                          AssetImage('assets/images/flutter_logo.png'),
                    ),
                    onTap: () {
                      SampleItemDetailsRoute(item.id).go(context);
                    });
              },
            ),
          ),
          error: (err, stack) => Center(child: Text('Error: $err')),
          loading: () => const Center(child: CircularProgressIndicator()),
        ));
  }
}

final itemsProvider = FutureProvider<List<SampleItem>>((ref) async {
  await Future.delayed(const Duration(seconds: 2));
  return items;
});

final itemDetailsProvider =
    FutureProvider.autoDispose.family<SampleItem, int>((ref, id) async {
  await Future.delayed(const Duration(seconds: 2));
  return items.firstWhere((it) => it.id == id, orElse: () => throw Exception());
});

final items = [
  SampleItem(1),
  SampleItem(2),
  SampleItem(3),
];
