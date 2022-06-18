// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paged_async_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PagedAsyncValue<T> {
  PagedFetchStatus get fetchStatus => throw _privateConstructorUsedError;
  int get nextPage => throw _privateConstructorUsedError;
  List<T> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PagedAsyncValueCopyWith<T, PagedAsyncValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedAsyncValueCopyWith<T, $Res> {
  factory $PagedAsyncValueCopyWith(
          PagedAsyncValue<T> value, $Res Function(PagedAsyncValue<T>) then) =
      _$PagedAsyncValueCopyWithImpl<T, $Res>;
  $Res call({PagedFetchStatus fetchStatus, int nextPage, List<T> items});

  $PagedFetchStatusCopyWith<$Res> get fetchStatus;
}

/// @nodoc
class _$PagedAsyncValueCopyWithImpl<T, $Res>
    implements $PagedAsyncValueCopyWith<T, $Res> {
  _$PagedAsyncValueCopyWithImpl(this._value, this._then);

  final PagedAsyncValue<T> _value;
  // ignore: unused_field
  final $Res Function(PagedAsyncValue<T>) _then;

  @override
  $Res call({
    Object? fetchStatus = freezed,
    Object? nextPage = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      fetchStatus: fetchStatus == freezed
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as PagedFetchStatus,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }

  @override
  $PagedFetchStatusCopyWith<$Res> get fetchStatus {
    return $PagedFetchStatusCopyWith<$Res>(_value.fetchStatus, (value) {
      return _then(_value.copyWith(fetchStatus: value));
    });
  }
}

/// @nodoc
abstract class _$$_PagedAsyncValueCopyWith<T, $Res>
    implements $PagedAsyncValueCopyWith<T, $Res> {
  factory _$$_PagedAsyncValueCopyWith(_$_PagedAsyncValue<T> value,
          $Res Function(_$_PagedAsyncValue<T>) then) =
      __$$_PagedAsyncValueCopyWithImpl<T, $Res>;
  @override
  $Res call({PagedFetchStatus fetchStatus, int nextPage, List<T> items});

  @override
  $PagedFetchStatusCopyWith<$Res> get fetchStatus;
}

/// @nodoc
class __$$_PagedAsyncValueCopyWithImpl<T, $Res>
    extends _$PagedAsyncValueCopyWithImpl<T, $Res>
    implements _$$_PagedAsyncValueCopyWith<T, $Res> {
  __$$_PagedAsyncValueCopyWithImpl(
      _$_PagedAsyncValue<T> _value, $Res Function(_$_PagedAsyncValue<T>) _then)
      : super(_value, (v) => _then(v as _$_PagedAsyncValue<T>));

  @override
  _$_PagedAsyncValue<T> get _value => super._value as _$_PagedAsyncValue<T>;

  @override
  $Res call({
    Object? fetchStatus = freezed,
    Object? nextPage = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_PagedAsyncValue<T>(
      fetchStatus: fetchStatus == freezed
          ? _value.fetchStatus
          : fetchStatus // ignore: cast_nullable_to_non_nullable
              as PagedFetchStatus,
      nextPage: nextPage == freezed
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$_PagedAsyncValue<T> implements _PagedAsyncValue<T> {
  const _$_PagedAsyncValue(
      {required this.fetchStatus,
      required this.nextPage,
      required final List<T> items})
      : _items = items;

  @override
  final PagedFetchStatus fetchStatus;
  @override
  final int nextPage;
  final List<T> _items;
  @override
  List<T> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PagedAsyncValue<$T>(fetchStatus: $fetchStatus, nextPage: $nextPage, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PagedAsyncValue<T> &&
            const DeepCollectionEquality()
                .equals(other.fetchStatus, fetchStatus) &&
            const DeepCollectionEquality().equals(other.nextPage, nextPage) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fetchStatus),
      const DeepCollectionEquality().hash(nextPage),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_PagedAsyncValueCopyWith<T, _$_PagedAsyncValue<T>> get copyWith =>
      __$$_PagedAsyncValueCopyWithImpl<T, _$_PagedAsyncValue<T>>(
          this, _$identity);
}

abstract class _PagedAsyncValue<T> implements PagedAsyncValue<T> {
  const factory _PagedAsyncValue(
      {required final PagedFetchStatus fetchStatus,
      required final int nextPage,
      required final List<T> items}) = _$_PagedAsyncValue<T>;

  @override
  PagedFetchStatus get fetchStatus => throw _privateConstructorUsedError;
  @override
  int get nextPage => throw _privateConstructorUsedError;
  @override
  List<T> get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PagedAsyncValueCopyWith<T, _$_PagedAsyncValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PagedFetchStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() data,
    required TResult Function() loading,
    required TResult Function() paging,
    required TResult Function(String? message) error,
    required TResult Function(String? message) pagingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Paging value) paging,
    required TResult Function(Error value) error,
    required TResult Function(PagingError value) pagingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedFetchStatusCopyWith<$Res> {
  factory $PagedFetchStatusCopyWith(
          PagedFetchStatus value, $Res Function(PagedFetchStatus) then) =
      _$PagedFetchStatusCopyWithImpl<$Res>;
}

/// @nodoc
class _$PagedFetchStatusCopyWithImpl<$Res>
    implements $PagedFetchStatusCopyWith<$Res> {
  _$PagedFetchStatusCopyWithImpl(this._value, this._then);

  final PagedFetchStatus _value;
  // ignore: unused_field
  final $Res Function(PagedFetchStatus) _then;
}

/// @nodoc
abstract class _$$DataCopyWith<$Res> {
  factory _$$DataCopyWith(_$Data value, $Res Function(_$Data) then) =
      __$$DataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataCopyWithImpl<$Res> extends _$PagedFetchStatusCopyWithImpl<$Res>
    implements _$$DataCopyWith<$Res> {
  __$$DataCopyWithImpl(_$Data _value, $Res Function(_$Data) _then)
      : super(_value, (v) => _then(v as _$Data));

  @override
  _$Data get _value => super._value as _$Data;
}

/// @nodoc

class _$Data implements Data {
  const _$Data();

  @override
  String toString() {
    return 'PagedFetchStatus.data()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Data);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() data,
    required TResult Function() loading,
    required TResult Function() paging,
    required TResult Function(String? message) error,
    required TResult Function(String? message) pagingError,
  }) {
    return data();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
  }) {
    return data?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Paging value) paging,
    required TResult Function(Error value) error,
    required TResult Function(PagingError value) pagingError,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class Data implements PagedFetchStatus {
  const factory Data() = _$Data;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$PagedFetchStatusCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'PagedFetchStatus.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() data,
    required TResult Function() loading,
    required TResult Function() paging,
    required TResult Function(String? message) error,
    required TResult Function(String? message) pagingError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Paging value) paging,
    required TResult Function(Error value) error,
    required TResult Function(PagingError value) pagingError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements PagedFetchStatus {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$PagingCopyWith<$Res> {
  factory _$$PagingCopyWith(_$Paging value, $Res Function(_$Paging) then) =
      __$$PagingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PagingCopyWithImpl<$Res> extends _$PagedFetchStatusCopyWithImpl<$Res>
    implements _$$PagingCopyWith<$Res> {
  __$$PagingCopyWithImpl(_$Paging _value, $Res Function(_$Paging) _then)
      : super(_value, (v) => _then(v as _$Paging));

  @override
  _$Paging get _value => super._value as _$Paging;
}

/// @nodoc

class _$Paging implements Paging {
  const _$Paging();

  @override
  String toString() {
    return 'PagedFetchStatus.paging()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Paging);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() data,
    required TResult Function() loading,
    required TResult Function() paging,
    required TResult Function(String? message) error,
    required TResult Function(String? message) pagingError,
  }) {
    return paging();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
  }) {
    return paging?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
    required TResult orElse(),
  }) {
    if (paging != null) {
      return paging();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Paging value) paging,
    required TResult Function(Error value) error,
    required TResult Function(PagingError value) pagingError,
  }) {
    return paging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
  }) {
    return paging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
    required TResult orElse(),
  }) {
    if (paging != null) {
      return paging(this);
    }
    return orElse();
  }
}

abstract class Paging implements PagedFetchStatus {
  const factory Paging() = _$Paging;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res> extends _$PagedFetchStatusCopyWithImpl<$Res>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, (v) => _then(v as _$Error));

  @override
  _$Error get _value => super._value as _$Error;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$Error(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'PagedFetchStatus.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() data,
    required TResult Function() loading,
    required TResult Function() paging,
    required TResult Function(String? message) error,
    required TResult Function(String? message) pagingError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Paging value) paging,
    required TResult Function(Error value) error,
    required TResult Function(PagingError value) pagingError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements PagedFetchStatus {
  const factory Error(final String? message) = _$Error;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PagingErrorCopyWith<$Res> {
  factory _$$PagingErrorCopyWith(
          _$PagingError value, $Res Function(_$PagingError) then) =
      __$$PagingErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$PagingErrorCopyWithImpl<$Res>
    extends _$PagedFetchStatusCopyWithImpl<$Res>
    implements _$$PagingErrorCopyWith<$Res> {
  __$$PagingErrorCopyWithImpl(
      _$PagingError _value, $Res Function(_$PagingError) _then)
      : super(_value, (v) => _then(v as _$PagingError));

  @override
  _$PagingError get _value => super._value as _$PagingError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PagingError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PagingError implements PagingError {
  const _$PagingError(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'PagedFetchStatus.pagingError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagingError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$PagingErrorCopyWith<_$PagingError> get copyWith =>
      __$$PagingErrorCopyWithImpl<_$PagingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() data,
    required TResult Function() loading,
    required TResult Function() paging,
    required TResult Function(String? message) error,
    required TResult Function(String? message) pagingError,
  }) {
    return pagingError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
  }) {
    return pagingError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? data,
    TResult Function()? loading,
    TResult Function()? paging,
    TResult Function(String? message)? error,
    TResult Function(String? message)? pagingError,
    required TResult orElse(),
  }) {
    if (pagingError != null) {
      return pagingError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Data value) data,
    required TResult Function(Loading value) loading,
    required TResult Function(Paging value) paging,
    required TResult Function(Error value) error,
    required TResult Function(PagingError value) pagingError,
  }) {
    return pagingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
  }) {
    return pagingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Data value)? data,
    TResult Function(Loading value)? loading,
    TResult Function(Paging value)? paging,
    TResult Function(Error value)? error,
    TResult Function(PagingError value)? pagingError,
    required TResult orElse(),
  }) {
    if (pagingError != null) {
      return pagingError(this);
    }
    return orElse();
  }
}

abstract class PagingError implements PagedFetchStatus {
  const factory PagingError(final String? message) = _$PagingError;

  String? get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$PagingErrorCopyWith<_$PagingError> get copyWith =>
      throw _privateConstructorUsedError;
}
