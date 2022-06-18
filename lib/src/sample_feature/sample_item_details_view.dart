import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sandbox/src/sample_feature/sample_item_list_view.dart';

class SampleItemDetailsPage extends HookConsumerWidget {
  const SampleItemDetailsPage({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futureItemDetails = ref.watch(itemDetailsProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
      ),
      body: futureItemDetails.when(
        data: (itemDetails) => Center(
          child: Text('Item Details: ${itemDetails.id}'),
        ),
        error: (err, stack) => Center(child: Text('Error: $err')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
