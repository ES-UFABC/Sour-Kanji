// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PageStateTearOff {
  const _$PageStateTearOff();

  PageStateIdle<T, F> idle<T, F>() {
    return PageStateIdle<T, F>();
  }

  PageStateLoading<T, F> loading<T, F>() {
    return PageStateLoading<T, F>();
  }

  PageStateSuccess<T, F> success<T, F>(T data) {
    return PageStateSuccess<T, F>(
      data,
    );
  }

  PageStateError<T, F> error<T, F>({String? message, F? failure}) {
    return PageStateError<T, F>(
      message: message,
      failure: failure,
    );
  }

  PageStateEmpty<T, F> empty<T, F>() {
    return PageStateEmpty<T, F>();
  }
}

/// @nodoc
const $PageState = _$PageStateTearOff();

/// @nodoc
mixin _$PageState<T, F> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message, F? failure) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateIdle<T, F> value) idle,
    required TResult Function(PageStateLoading<T, F> value) loading,
    required TResult Function(PageStateSuccess<T, F> value) success,
    required TResult Function(PageStateError<T, F> value) error,
    required TResult Function(PageStateEmpty<T, F> value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateCopyWith<T, F, $Res> {
  factory $PageStateCopyWith(
          PageState<T, F> value, $Res Function(PageState<T, F>) then) =
      _$PageStateCopyWithImpl<T, F, $Res>;
}

/// @nodoc
class _$PageStateCopyWithImpl<T, F, $Res>
    implements $PageStateCopyWith<T, F, $Res> {
  _$PageStateCopyWithImpl(this._value, this._then);

  final PageState<T, F> _value;
  // ignore: unused_field
  final $Res Function(PageState<T, F>) _then;
}

/// @nodoc
abstract class $PageStateIdleCopyWith<T, F, $Res> {
  factory $PageStateIdleCopyWith(
          PageStateIdle<T, F> value, $Res Function(PageStateIdle<T, F>) then) =
      _$PageStateIdleCopyWithImpl<T, F, $Res>;
}

/// @nodoc
class _$PageStateIdleCopyWithImpl<T, F, $Res>
    extends _$PageStateCopyWithImpl<T, F, $Res>
    implements $PageStateIdleCopyWith<T, F, $Res> {
  _$PageStateIdleCopyWithImpl(
      PageStateIdle<T, F> _value, $Res Function(PageStateIdle<T, F>) _then)
      : super(_value, (v) => _then(v as PageStateIdle<T, F>));

  @override
  PageStateIdle<T, F> get _value => super._value as PageStateIdle<T, F>;
}

/// @nodoc

class _$PageStateIdle<T, F> implements PageStateIdle<T, F> {
  const _$PageStateIdle();

  @override
  String toString() {
    return 'PageState<$T, $F>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageStateIdle<T, F>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message, F? failure) error,
    required TResult Function() empty,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateIdle<T, F> value) idle,
    required TResult Function(PageStateLoading<T, F> value) loading,
    required TResult Function(PageStateSuccess<T, F> value) success,
    required TResult Function(PageStateError<T, F> value) error,
    required TResult Function(PageStateEmpty<T, F> value) empty,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class PageStateIdle<T, F> implements PageState<T, F> {
  const factory PageStateIdle() = _$PageStateIdle<T, F>;
}

/// @nodoc
abstract class $PageStateLoadingCopyWith<T, F, $Res> {
  factory $PageStateLoadingCopyWith(PageStateLoading<T, F> value,
          $Res Function(PageStateLoading<T, F>) then) =
      _$PageStateLoadingCopyWithImpl<T, F, $Res>;
}

/// @nodoc
class _$PageStateLoadingCopyWithImpl<T, F, $Res>
    extends _$PageStateCopyWithImpl<T, F, $Res>
    implements $PageStateLoadingCopyWith<T, F, $Res> {
  _$PageStateLoadingCopyWithImpl(PageStateLoading<T, F> _value,
      $Res Function(PageStateLoading<T, F>) _then)
      : super(_value, (v) => _then(v as PageStateLoading<T, F>));

  @override
  PageStateLoading<T, F> get _value => super._value as PageStateLoading<T, F>;
}

/// @nodoc

class _$PageStateLoading<T, F> implements PageStateLoading<T, F> {
  const _$PageStateLoading();

  @override
  String toString() {
    return 'PageState<$T, $F>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageStateLoading<T, F>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message, F? failure) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
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
    required TResult Function(PageStateIdle<T, F> value) idle,
    required TResult Function(PageStateLoading<T, F> value) loading,
    required TResult Function(PageStateSuccess<T, F> value) success,
    required TResult Function(PageStateError<T, F> value) error,
    required TResult Function(PageStateEmpty<T, F> value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PageStateLoading<T, F> implements PageState<T, F> {
  const factory PageStateLoading() = _$PageStateLoading<T, F>;
}

/// @nodoc
abstract class $PageStateSuccessCopyWith<T, F, $Res> {
  factory $PageStateSuccessCopyWith(PageStateSuccess<T, F> value,
          $Res Function(PageStateSuccess<T, F>) then) =
      _$PageStateSuccessCopyWithImpl<T, F, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$PageStateSuccessCopyWithImpl<T, F, $Res>
    extends _$PageStateCopyWithImpl<T, F, $Res>
    implements $PageStateSuccessCopyWith<T, F, $Res> {
  _$PageStateSuccessCopyWithImpl(PageStateSuccess<T, F> _value,
      $Res Function(PageStateSuccess<T, F>) _then)
      : super(_value, (v) => _then(v as PageStateSuccess<T, F>));

  @override
  PageStateSuccess<T, F> get _value => super._value as PageStateSuccess<T, F>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(PageStateSuccess<T, F>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PageStateSuccess<T, F> implements PageStateSuccess<T, F> {
  const _$PageStateSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'PageState<$T, $F>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageStateSuccess<T, F> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $PageStateSuccessCopyWith<T, F, PageStateSuccess<T, F>> get copyWith =>
      _$PageStateSuccessCopyWithImpl<T, F, PageStateSuccess<T, F>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message, F? failure) error,
    required TResult Function() empty,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateIdle<T, F> value) idle,
    required TResult Function(PageStateLoading<T, F> value) loading,
    required TResult Function(PageStateSuccess<T, F> value) success,
    required TResult Function(PageStateError<T, F> value) error,
    required TResult Function(PageStateEmpty<T, F> value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PageStateSuccess<T, F> implements PageState<T, F> {
  const factory PageStateSuccess(T data) = _$PageStateSuccess<T, F>;

  T get data;
  @JsonKey(ignore: true)
  $PageStateSuccessCopyWith<T, F, PageStateSuccess<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateErrorCopyWith<T, F, $Res> {
  factory $PageStateErrorCopyWith(PageStateError<T, F> value,
          $Res Function(PageStateError<T, F>) then) =
      _$PageStateErrorCopyWithImpl<T, F, $Res>;
  $Res call({String? message, F? failure});
}

/// @nodoc
class _$PageStateErrorCopyWithImpl<T, F, $Res>
    extends _$PageStateCopyWithImpl<T, F, $Res>
    implements $PageStateErrorCopyWith<T, F, $Res> {
  _$PageStateErrorCopyWithImpl(
      PageStateError<T, F> _value, $Res Function(PageStateError<T, F>) _then)
      : super(_value, (v) => _then(v as PageStateError<T, F>));

  @override
  PageStateError<T, F> get _value => super._value as PageStateError<T, F>;

  @override
  $Res call({
    Object? message = freezed,
    Object? failure = freezed,
  }) {
    return _then(PageStateError<T, F>(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F?,
    ));
  }
}

/// @nodoc

class _$PageStateError<T, F> implements PageStateError<T, F> {
  const _$PageStateError({this.message, this.failure});

  @override
  final String? message;
  @override
  final F? failure;

  @override
  String toString() {
    return 'PageState<$T, $F>.error(message: $message, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageStateError<T, F> &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  $PageStateErrorCopyWith<T, F, PageStateError<T, F>> get copyWith =>
      _$PageStateErrorCopyWithImpl<T, F, PageStateError<T, F>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message, F? failure) error,
    required TResult Function() empty,
  }) {
    return error(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
  }) {
    return error?.call(message, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateIdle<T, F> value) idle,
    required TResult Function(PageStateLoading<T, F> value) loading,
    required TResult Function(PageStateSuccess<T, F> value) success,
    required TResult Function(PageStateError<T, F> value) error,
    required TResult Function(PageStateEmpty<T, F> value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PageStateError<T, F> implements PageState<T, F> {
  const factory PageStateError({String? message, F? failure}) =
      _$PageStateError<T, F>;

  String? get message;
  F? get failure;
  @JsonKey(ignore: true)
  $PageStateErrorCopyWith<T, F, PageStateError<T, F>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageStateEmptyCopyWith<T, F, $Res> {
  factory $PageStateEmptyCopyWith(PageStateEmpty<T, F> value,
          $Res Function(PageStateEmpty<T, F>) then) =
      _$PageStateEmptyCopyWithImpl<T, F, $Res>;
}

/// @nodoc
class _$PageStateEmptyCopyWithImpl<T, F, $Res>
    extends _$PageStateCopyWithImpl<T, F, $Res>
    implements $PageStateEmptyCopyWith<T, F, $Res> {
  _$PageStateEmptyCopyWithImpl(
      PageStateEmpty<T, F> _value, $Res Function(PageStateEmpty<T, F>) _then)
      : super(_value, (v) => _then(v as PageStateEmpty<T, F>));

  @override
  PageStateEmpty<T, F> get _value => super._value as PageStateEmpty<T, F>;
}

/// @nodoc

class _$PageStateEmpty<T, F> implements PageStateEmpty<T, F> {
  const _$PageStateEmpty();

  @override
  String toString() {
    return 'PageState<$T, $F>.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageStateEmpty<T, F>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String? message, F? failure) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String? message, F? failure)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PageStateIdle<T, F> value) idle,
    required TResult Function(PageStateLoading<T, F> value) loading,
    required TResult Function(PageStateSuccess<T, F> value) success,
    required TResult Function(PageStateError<T, F> value) error,
    required TResult Function(PageStateEmpty<T, F> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PageStateIdle<T, F> value)? idle,
    TResult Function(PageStateLoading<T, F> value)? loading,
    TResult Function(PageStateSuccess<T, F> value)? success,
    TResult Function(PageStateError<T, F> value)? error,
    TResult Function(PageStateEmpty<T, F> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class PageStateEmpty<T, F> implements PageState<T, F> {
  const factory PageStateEmpty() = _$PageStateEmpty<T, F>;
}
