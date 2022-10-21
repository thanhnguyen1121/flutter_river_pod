// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_notifier_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StateNotifierState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> models, int? index) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ProductModel> models, int? index)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> models, int? index)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(StateNotifierStateData value) $default, {
    required TResult Function(StateNotifierStateLoading value) loading,
    required TResult Function(StateNotifierStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(StateNotifierStateData value)? $default, {
    TResult? Function(StateNotifierStateLoading value)? loading,
    TResult? Function(StateNotifierStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(StateNotifierStateData value)? $default, {
    TResult Function(StateNotifierStateLoading value)? loading,
    TResult Function(StateNotifierStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateNotifierStateCopyWith<$Res> {
  factory $StateNotifierStateCopyWith(
          StateNotifierState value, $Res Function(StateNotifierState) then) =
      _$StateNotifierStateCopyWithImpl<$Res, StateNotifierState>;
}

/// @nodoc
class _$StateNotifierStateCopyWithImpl<$Res, $Val extends StateNotifierState>
    implements $StateNotifierStateCopyWith<$Res> {
  _$StateNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StateNotifierStateDataCopyWith<$Res> {
  factory _$$StateNotifierStateDataCopyWith(_$StateNotifierStateData value,
          $Res Function(_$StateNotifierStateData) then) =
      __$$StateNotifierStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> models, int? index});
}

/// @nodoc
class __$$StateNotifierStateDataCopyWithImpl<$Res>
    extends _$StateNotifierStateCopyWithImpl<$Res, _$StateNotifierStateData>
    implements _$$StateNotifierStateDataCopyWith<$Res> {
  __$$StateNotifierStateDataCopyWithImpl(_$StateNotifierStateData _value,
      $Res Function(_$StateNotifierStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
    Object? index = freezed,
  }) {
    return _then(_$StateNotifierStateData(
      null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$StateNotifierStateData implements StateNotifierStateData {
  const _$StateNotifierStateData(final List<ProductModel> models, this.index)
      : _models = models;

  final List<ProductModel> _models;
  @override
  List<ProductModel> get models {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  final int? index;

  @override
  String toString() {
    return 'StateNotifierState(models: $models, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateNotifierStateData &&
            const DeepCollectionEquality().equals(other._models, _models) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_models), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateNotifierStateDataCopyWith<_$StateNotifierStateData> get copyWith =>
      __$$StateNotifierStateDataCopyWithImpl<_$StateNotifierStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> models, int? index) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(models, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ProductModel> models, int? index)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return $default?.call(models, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> models, int? index)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(models, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(StateNotifierStateData value) $default, {
    required TResult Function(StateNotifierStateLoading value) loading,
    required TResult Function(StateNotifierStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(StateNotifierStateData value)? $default, {
    TResult? Function(StateNotifierStateLoading value)? loading,
    TResult? Function(StateNotifierStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(StateNotifierStateData value)? $default, {
    TResult Function(StateNotifierStateLoading value)? loading,
    TResult Function(StateNotifierStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class StateNotifierStateData implements StateNotifierState {
  const factory StateNotifierStateData(
          final List<ProductModel> models, final int? index) =
      _$StateNotifierStateData;

  List<ProductModel> get models;
  int? get index;
  @JsonKey(ignore: true)
  _$$StateNotifierStateDataCopyWith<_$StateNotifierStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StateNotifierStateLoadingCopyWith<$Res> {
  factory _$$StateNotifierStateLoadingCopyWith(
          _$StateNotifierStateLoading value,
          $Res Function(_$StateNotifierStateLoading) then) =
      __$$StateNotifierStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StateNotifierStateLoadingCopyWithImpl<$Res>
    extends _$StateNotifierStateCopyWithImpl<$Res, _$StateNotifierStateLoading>
    implements _$$StateNotifierStateLoadingCopyWith<$Res> {
  __$$StateNotifierStateLoadingCopyWithImpl(_$StateNotifierStateLoading _value,
      $Res Function(_$StateNotifierStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StateNotifierStateLoading implements StateNotifierStateLoading {
  const _$StateNotifierStateLoading();

  @override
  String toString() {
    return 'StateNotifierState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateNotifierStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> models, int? index) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ProductModel> models, int? index)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> models, int? index)? $default, {
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
    TResult Function(StateNotifierStateData value) $default, {
    required TResult Function(StateNotifierStateLoading value) loading,
    required TResult Function(StateNotifierStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(StateNotifierStateData value)? $default, {
    TResult? Function(StateNotifierStateLoading value)? loading,
    TResult? Function(StateNotifierStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(StateNotifierStateData value)? $default, {
    TResult Function(StateNotifierStateLoading value)? loading,
    TResult Function(StateNotifierStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class StateNotifierStateLoading implements StateNotifierState {
  const factory StateNotifierStateLoading() = _$StateNotifierStateLoading;
}

/// @nodoc
abstract class _$$StateNotifierStateErrorCopyWith<$Res> {
  factory _$$StateNotifierStateErrorCopyWith(_$StateNotifierStateError value,
          $Res Function(_$StateNotifierStateError) then) =
      __$$StateNotifierStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$StateNotifierStateErrorCopyWithImpl<$Res>
    extends _$StateNotifierStateCopyWithImpl<$Res, _$StateNotifierStateError>
    implements _$$StateNotifierStateErrorCopyWith<$Res> {
  __$$StateNotifierStateErrorCopyWithImpl(_$StateNotifierStateError _value,
      $Res Function(_$StateNotifierStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$StateNotifierStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$StateNotifierStateError implements StateNotifierStateError {
  const _$StateNotifierStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'StateNotifierState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StateNotifierStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StateNotifierStateErrorCopyWith<_$StateNotifierStateError> get copyWith =>
      __$$StateNotifierStateErrorCopyWithImpl<_$StateNotifierStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<ProductModel> models, int? index) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<ProductModel> models, int? index)? $default, {
    TResult? Function()? loading,
    TResult? Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<ProductModel> models, int? index)? $default, {
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
    TResult Function(StateNotifierStateData value) $default, {
    required TResult Function(StateNotifierStateLoading value) loading,
    required TResult Function(StateNotifierStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(StateNotifierStateData value)? $default, {
    TResult? Function(StateNotifierStateLoading value)? loading,
    TResult? Function(StateNotifierStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(StateNotifierStateData value)? $default, {
    TResult Function(StateNotifierStateLoading value)? loading,
    TResult Function(StateNotifierStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class StateNotifierStateError implements StateNotifierState {
  const factory StateNotifierStateError(final dynamic error) =
      _$StateNotifierStateError;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$StateNotifierStateErrorCopyWith<_$StateNotifierStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
