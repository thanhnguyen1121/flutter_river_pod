// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'demo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DemoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, ProductModel> models) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Map<String, ProductModel> models)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, ProductModel> models)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoListStateData value) $default, {
    required TResult Function(DemoListStateLoading value) loading,
    required TResult Function(DemoListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DemoListStateData value)? $default, {
    TResult? Function(DemoListStateLoading value)? loading,
    TResult? Function(DemoListStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoListStateData value)? $default, {
    TResult Function(DemoListStateLoading value)? loading,
    TResult Function(DemoListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DemoListStateCopyWith<$Res> {
  factory $DemoListStateCopyWith(
          DemoListState value, $Res Function(DemoListState) then) =
      _$DemoListStateCopyWithImpl<$Res, DemoListState>;
}

/// @nodoc
class _$DemoListStateCopyWithImpl<$Res, $Val extends DemoListState>
    implements $DemoListStateCopyWith<$Res> {
  _$DemoListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DemoListStateDataCopyWith<$Res> {
  factory _$$DemoListStateDataCopyWith(
          _$DemoListStateData value, $Res Function(_$DemoListStateData) then) =
      __$$DemoListStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, ProductModel> models});
}

/// @nodoc
class __$$DemoListStateDataCopyWithImpl<$Res>
    extends _$DemoListStateCopyWithImpl<$Res, _$DemoListStateData>
    implements _$$DemoListStateDataCopyWith<$Res> {
  __$$DemoListStateDataCopyWithImpl(
      _$DemoListStateData _value, $Res Function(_$DemoListStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
  }) {
    return _then(_$DemoListStateData(
      null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as Map<String, ProductModel>,
    ));
  }
}

/// @nodoc

class _$DemoListStateData implements DemoListStateData {
  const _$DemoListStateData(final Map<String, ProductModel> models)
      : _models = models;

  final Map<String, ProductModel> _models;
  @override
  Map<String, ProductModel> get models {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_models);
  }

  @override
  String toString() {
    return 'DemoListState(models: $models)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemoListStateData &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_models));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DemoListStateDataCopyWith<_$DemoListStateData> get copyWith =>
      __$$DemoListStateDataCopyWithImpl<_$DemoListStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, ProductModel> models) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(models);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Map<String, ProductModel> models)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return $default?.call(models);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, ProductModel> models)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(models);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoListStateData value) $default, {
    required TResult Function(DemoListStateLoading value) loading,
    required TResult Function(DemoListStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DemoListStateData value)? $default, {
    TResult? Function(DemoListStateLoading value)? loading,
    TResult? Function(DemoListStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoListStateData value)? $default, {
    TResult Function(DemoListStateLoading value)? loading,
    TResult Function(DemoListStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DemoListStateData implements DemoListState {
  const factory DemoListStateData(final Map<String, ProductModel> models) =
      _$DemoListStateData;

  Map<String, ProductModel> get models;
  @JsonKey(ignore: true)
  _$$DemoListStateDataCopyWith<_$DemoListStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DemoListStateLoadingCopyWith<$Res> {
  factory _$$DemoListStateLoadingCopyWith(_$DemoListStateLoading value,
          $Res Function(_$DemoListStateLoading) then) =
      __$$DemoListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DemoListStateLoadingCopyWithImpl<$Res>
    extends _$DemoListStateCopyWithImpl<$Res, _$DemoListStateLoading>
    implements _$$DemoListStateLoadingCopyWith<$Res> {
  __$$DemoListStateLoadingCopyWithImpl(_$DemoListStateLoading _value,
      $Res Function(_$DemoListStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DemoListStateLoading implements DemoListStateLoading {
  const _$DemoListStateLoading();

  @override
  String toString() {
    return 'DemoListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DemoListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, ProductModel> models) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Map<String, ProductModel> models)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, ProductModel> models)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoListStateData value) $default, {
    required TResult Function(DemoListStateLoading value) loading,
    required TResult Function(DemoListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DemoListStateData value)? $default, {
    TResult? Function(DemoListStateLoading value)? loading,
    TResult? Function(DemoListStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoListStateData value)? $default, {
    TResult Function(DemoListStateLoading value)? loading,
    TResult Function(DemoListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DemoListStateLoading implements DemoListState {
  const factory DemoListStateLoading() = _$DemoListStateLoading;
}

/// @nodoc
abstract class _$$DemoListStateErrorCopyWith<$Res> {
  factory _$$DemoListStateErrorCopyWith(_$DemoListStateError value,
          $Res Function(_$DemoListStateError) then) =
      __$$DemoListStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$DemoListStateErrorCopyWithImpl<$Res>
    extends _$DemoListStateCopyWithImpl<$Res, _$DemoListStateError>
    implements _$$DemoListStateErrorCopyWith<$Res> {
  __$$DemoListStateErrorCopyWithImpl(
      _$DemoListStateError _value, $Res Function(_$DemoListStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$DemoListStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DemoListStateError implements DemoListStateError {
  const _$DemoListStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'DemoListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DemoListStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DemoListStateErrorCopyWith<_$DemoListStateError> get copyWith =>
      __$$DemoListStateErrorCopyWithImpl<_$DemoListStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Map<String, ProductModel> models) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(Map<String, ProductModel> models)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Map<String, ProductModel> models)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DemoListStateData value) $default, {
    required TResult Function(DemoListStateLoading value) loading,
    required TResult Function(DemoListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DemoListStateData value)? $default, {
    TResult? Function(DemoListStateLoading value)? loading,
    TResult? Function(DemoListStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DemoListStateData value)? $default, {
    TResult Function(DemoListStateLoading value)? loading,
    TResult Function(DemoListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DemoListStateError implements DemoListState {
  const factory DemoListStateError(final dynamic error) = _$DemoListStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$DemoListStateErrorCopyWith<_$DemoListStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
