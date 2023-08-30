// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UserEntity> usersList) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UserEntity> usersList)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UserEntity> usersList)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialState value) initial,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserErrorState value) error,
    required TResult Function(UserLoadedState value) loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialState value)? initial,
    TResult? Function(UserLoadingState value)? loading,
    TResult? Function(UserErrorState value)? error,
    TResult? Function(UserLoadedState value)? loadedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialState value)? initial,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserErrorState value)? error,
    TResult Function(UserLoadedState value)? loadedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserInitialStateCopyWith<$Res> {
  factory _$$UserInitialStateCopyWith(
          _$UserInitialState value, $Res Function(_$UserInitialState) then) =
      __$$UserInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInitialStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserInitialState>
    implements _$$UserInitialStateCopyWith<$Res> {
  __$$UserInitialStateCopyWithImpl(
      _$UserInitialState _value, $Res Function(_$UserInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserInitialState implements UserInitialState {
  const _$UserInitialState();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UserEntity> usersList) loadedState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UserEntity> usersList)? loadedState,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UserEntity> usersList)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialState value) initial,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserErrorState value) error,
    required TResult Function(UserLoadedState value) loadedState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialState value)? initial,
    TResult? Function(UserLoadingState value)? loading,
    TResult? Function(UserErrorState value)? error,
    TResult? Function(UserLoadedState value)? loadedState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialState value)? initial,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserErrorState value)? error,
    TResult Function(UserLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserInitialState implements UserState {
  const factory UserInitialState() = _$UserInitialState;
}

/// @nodoc
abstract class _$$UserLoadingStateCopyWith<$Res> {
  factory _$$UserLoadingStateCopyWith(
          _$UserLoadingState value, $Res Function(_$UserLoadingState) then) =
      __$$UserLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoadingStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadingState>
    implements _$$UserLoadingStateCopyWith<$Res> {
  __$$UserLoadingStateCopyWithImpl(
      _$UserLoadingState _value, $Res Function(_$UserLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserLoadingState implements UserLoadingState {
  const _$UserLoadingState();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UserEntity> usersList) loadedState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UserEntity> usersList)? loadedState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UserEntity> usersList)? loadedState,
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
    required TResult Function(UserInitialState value) initial,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserErrorState value) error,
    required TResult Function(UserLoadedState value) loadedState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialState value)? initial,
    TResult? Function(UserLoadingState value)? loading,
    TResult? Function(UserErrorState value)? error,
    TResult? Function(UserLoadedState value)? loadedState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialState value)? initial,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserErrorState value)? error,
    TResult Function(UserLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoadingState implements UserState {
  const factory UserLoadingState() = _$UserLoadingState;
}

/// @nodoc
abstract class _$$UserErrorStateCopyWith<$Res> {
  factory _$$UserErrorStateCopyWith(
          _$UserErrorState value, $Res Function(_$UserErrorState) then) =
      __$$UserErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserErrorStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserErrorState>
    implements _$$UserErrorStateCopyWith<$Res> {
  __$$UserErrorStateCopyWithImpl(
      _$UserErrorState _value, $Res Function(_$UserErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserErrorState implements UserErrorState {
  const _$UserErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserErrorStateCopyWith<_$UserErrorState> get copyWith =>
      __$$UserErrorStateCopyWithImpl<_$UserErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UserEntity> usersList) loadedState,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UserEntity> usersList)? loadedState,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UserEntity> usersList)? loadedState,
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
    required TResult Function(UserInitialState value) initial,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserErrorState value) error,
    required TResult Function(UserLoadedState value) loadedState,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialState value)? initial,
    TResult? Function(UserLoadingState value)? loading,
    TResult? Function(UserErrorState value)? error,
    TResult? Function(UserLoadedState value)? loadedState,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialState value)? initial,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserErrorState value)? error,
    TResult Function(UserLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserErrorState implements UserState {
  const factory UserErrorState(final String message) = _$UserErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$UserErrorStateCopyWith<_$UserErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoadedStateCopyWith<$Res> {
  factory _$$UserLoadedStateCopyWith(
          _$UserLoadedState value, $Res Function(_$UserLoadedState) then) =
      __$$UserLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UserEntity> usersList});
}

/// @nodoc
class __$$UserLoadedStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserLoadedState>
    implements _$$UserLoadedStateCopyWith<$Res> {
  __$$UserLoadedStateCopyWithImpl(
      _$UserLoadedState _value, $Res Function(_$UserLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usersList = null,
  }) {
    return _then(_$UserLoadedState(
      usersList: null == usersList
          ? _value._usersList
          : usersList // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc

class _$UserLoadedState implements UserLoadedState {
  const _$UserLoadedState({required final List<UserEntity> usersList})
      : _usersList = usersList;

  final List<UserEntity> _usersList;
  @override
  List<UserEntity> get usersList {
    if (_usersList is EqualUnmodifiableListView) return _usersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersList);
  }

  @override
  String toString() {
    return 'UserState.loadedState(usersList: $usersList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedState &&
            const DeepCollectionEquality()
                .equals(other._usersList, _usersList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_usersList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoadedStateCopyWith<_$UserLoadedState> get copyWith =>
      __$$UserLoadedStateCopyWithImpl<_$UserLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<UserEntity> usersList) loadedState,
  }) {
    return loadedState(usersList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<UserEntity> usersList)? loadedState,
  }) {
    return loadedState?.call(usersList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<UserEntity> usersList)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(usersList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInitialState value) initial,
    required TResult Function(UserLoadingState value) loading,
    required TResult Function(UserErrorState value) error,
    required TResult Function(UserLoadedState value) loadedState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserInitialState value)? initial,
    TResult? Function(UserLoadingState value)? loading,
    TResult? Function(UserErrorState value)? error,
    TResult? Function(UserLoadedState value)? loadedState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInitialState value)? initial,
    TResult Function(UserLoadingState value)? loading,
    TResult Function(UserErrorState value)? error,
    TResult Function(UserLoadedState value)? loadedState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class UserLoadedState implements UserState {
  const factory UserLoadedState({required final List<UserEntity> usersList}) =
      _$UserLoadedState;

  List<UserEntity> get usersList;
  @JsonKey(ignore: true)
  _$$UserLoadedStateCopyWith<_$UserLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
