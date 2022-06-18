import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sandbox/src/app_route.dart';
import 'package:sandbox/src/paging_feature/paged_async_value.dart';
import 'package:sandbox/src/sample_feature/sample_item.dart';
import 'package:visibility_detector/visibility_detector.dart';

class PagingItemListPage extends HookConsumerWidget {
  const PagingItemListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final futurePagedItems = ref.watch(pagedItemsProvider);
    final pagedItemsStateNotifier = ref.watch(pagedItemsStateNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Items'),
      ),
      body: Stack(
        children: [
          RefreshIndicator(
            onRefresh: () => pagedItemsStateNotifier.refresh(),
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      final item = futurePagedItems.items[index];
                      return ListTile(
                          title: Text('SampleItem ${item.id}'),
                          leading: const CircleAvatar(
                            foregroundImage:
                                AssetImage('assets/images/flutter_logo.png'),
                          ),
                          onTap: () {
                            context
                                .pushRoute(SampleItemDetailsRoute(id: item.id));
                          });
                    },
                    childCount: futurePagedItems.items.length,
                  ),
                ),
                SliverToBoxAdapter(
                    child: futurePagedItems.fetchStatus.maybeWhen(
                        data: () => VisibilityDetector(
                              key: const Key('paging trigger'),
                              child: const SizedBox(height: 64.0),
                              onVisibilityChanged: (visibilityInfo) {
                                if (visibilityInfo.visibleFraction >= 1) {
                                  pagedItemsStateNotifier.fetchNextPage();
                                }
                              },
                            ),
                        paging: () => const SizedBox(
                            height: 64.0,
                            child: Center(child: CircularProgressIndicator())),
                        pagingError: (message) => Center(
                              child: Column(
                                children: [
                                  Text(message ?? ''),
                                  TextButton(
                                      onPressed: () => pagedItemsStateNotifier
                                          .fetchNextPage(),
                                      child: const Text('リトライ'))
                                ],
                              ),
                            ),
                        orElse: () => Container())),
              ],
            ),
          ),
          futurePagedItems.fetchStatus.maybeWhen(
            error: (message) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(message ?? ''),
                  TextButton(
                      onPressed: () => pagedItemsStateNotifier.refresh(),
                      child: const Text('リトライ'))
                ],
              ),
            ),
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => Container(),
          ),
        ],
      ),
    );
  }
}

final pagedItemsProvider = StateNotifierProvider<PagedStateNotifier<SampleItem>,
    PagedAsyncValue<SampleItem>>(
  (ref) => ref.watch(pagedItemsStateNotifierProvider),
);

final pagedItemsStateNotifierProvider = Provider(
  (_) => PagedStateNotifier(
    fetch: (nextPage) async {
      const pageSize = 15;
      await Future.delayed(const Duration(seconds: 2));
      return ListWithNextPage(
        nextPage + 1,
        List.generate(
            pageSize, (index) => SampleItem(index + (nextPage - 1) * pageSize)),
      );
    },
  ),
);

class PagedStateNotifier<T> extends StateNotifier<PagedAsyncValue<T>> {
  PagedStateNotifier({
    required this.fetch,
  }) : super(
          PagedAsyncValue<T>(
            fetchStatus: const PagedFetchStatus.data(),
            nextPage: 1,
            items: <T>[],
          ),
        ) {
    refresh();
  }

  final Future<ListWithNextPage<T>> Function(int) fetch;

  Future<void> refresh() async {
    if (isAlreadyFetching()) {
      return;
    }

    state = state.copyWith(
      nextPage: 1,
      items: <T>[],
      fetchStatus: const PagedFetchStatus.loading(),
    );

    try {
      final data = await fetch(1);
      state = state.copyWith(
        nextPage: data.nextPage,
        items: data.items,
        fetchStatus: const PagedFetchStatus.data(),
      );
    } catch (e) {
      state = state.copyWith(
        fetchStatus: PagedFetchStatus.error(e.toString()),
      );
    }
  }

  Future<void> fetchNextPage() async {
    if (isAlreadyFetching()) {
      return;
    }

    state = state.copyWith(
      fetchStatus: const PagedFetchStatus.paging(),
    );

    try {
      final data = await fetch(state.nextPage);
      state = state.copyWith(
        nextPage: data.nextPage,
        items: state.items + data.items, // todo 整列, 重複排除
        fetchStatus: const PagedFetchStatus.data(),
      );
    } catch (e) {
      state = state.copyWith(
        fetchStatus: PagedFetchStatus.pagingError(e.toString()),
      );
    }
  }

  bool isAlreadyFetching() => state.fetchStatus.when(
        data: () => false,
        loading: () => true,
        paging: () => true,
        error: (message) => false,
        pagingError: (message) => false,
      );
}

class ListWithNextPage<T> {
  final int nextPage;
  final List<T> items;

  ListWithNextPage(this.nextPage, this.items);
}
