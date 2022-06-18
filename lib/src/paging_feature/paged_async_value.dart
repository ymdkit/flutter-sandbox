import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_async_value.freezed.dart';

@freezed
class PagedAsyncValue<T> with _$PagedAsyncValue<T> {
  const factory PagedAsyncValue({
    required PagedFetchStatus fetchStatus,
    required int nextPage,
    required List<T> items,
  }) = _PagedAsyncValue;
}

@freezed
class PagedFetchStatus with _$PagedFetchStatus {
  const factory PagedFetchStatus.data() = Data;
  const factory PagedFetchStatus.loading() = Loading;
  const factory PagedFetchStatus.paging() = Paging;
  const factory PagedFetchStatus.error(String? message) = Error;
  const factory PagedFetchStatus.pagingError(String? message) = PagingError;
}
