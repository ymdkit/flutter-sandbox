import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sandbox/src/app_route.dart';

import 'sample_item.dart';

class SampleItemListPage extends HookConsumerWidget {
  const SampleItemListPage({
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
                      context.pushRoute(SampleItemDetailsRoute(id: item.id));
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
