// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetUser,
    required TResult Function() onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetUser,
    TResult? Function()? onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetUser,
    TResult Function()? onPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserFetchEventData value) onGetUser,
    required TResult Function(UserOnPressedEventData value) onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserFetchEventData value)? onGetUser,
    TResult? Function(UserOnPressedEventData value)? onPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserFetchEventData value)? onGetUser,
    TResult Function(UserOnPressedEventData value)? onPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserFetchEventDataImplCopyWith<$Res> {
  factory _$$UserFetchEventDataImplCopyWith(_$UserFetchEventDataImpl value,
          $Res Function(_$UserFetchEventDataImpl) then) =
      __$$UserFetchEventDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserFetchEventDataImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserFetchEventDataImpl>
    implements _$$UserFetchEventDataImplCopyWith<$Res> {
  __$$UserFetchEventDataImplCopyWithImpl(_$UserFetchEventDataImpl _value,
      $Res Function(_$UserFetchEventDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserFetchEventDataImpl implements UserFetchEventData {
  const _$UserFetchEventDataImpl();

  @override
  String toString() {
    return 'UserEvent.onGetUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserFetchEventDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetUser,
    required TResult Function() onPressed,
  }) {
    return onGetUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetUser,
    TResult? Function()? onPressed,
  }) {
    return onGetUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetUser,
    TResult Function()? onPressed,
    required TResult orElse(),
  }) {
    if (onGetUser != null) {
      return onGetUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserFetchEventData value) onGetUser,
    required TResult Function(UserOnPressedEventData value) onPressed,
  }) {
    return onGetUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserFetchEventData value)? onGetUser,
    TResult? Function(UserOnPressedEventData value)? onPressed,
  }) {
    return onGetUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserFetchEventData value)? onGetUser,
    TResult Function(UserOnPressedEventData value)? onPressed,
    required TResult orElse(),
  }) {
    if (onGetUser != null) {
      return onGetUser(this);
    }
    return orElse();
  }
}

abstract class UserFetchEventData implements UserEvent {
  const factory UserFetchEventData() = _$UserFetchEventDataImpl;
}

/// @nodoc
abstract class _$$UserOnPressedEventDataImplCopyWith<$Res> {
  factory _$$UserOnPressedEventDataImplCopyWith(
          _$UserOnPressedEventDataImpl value,
          $Res Function(_$UserOnPressedEventDataImpl) then) =
      __$$UserOnPressedEventDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserOnPressedEventDataImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UserOnPressedEventDataImpl>
    implements _$$UserOnPressedEventDataImplCopyWith<$Res> {
  __$$UserOnPressedEventDataImplCopyWithImpl(
      _$UserOnPressedEventDataImpl _value,
      $Res Function(_$UserOnPressedEventDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserOnPressedEventDataImpl implements UserOnPressedEventData {
  const _$UserOnPressedEventDataImpl();

  @override
  String toString() {
    return 'UserEvent.onPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserOnPressedEventDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGetUser,
    required TResult Function() onPressed,
  }) {
    return onPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGetUser,
    TResult? Function()? onPressed,
  }) {
    return onPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGetUser,
    TResult Function()? onPressed,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserFetchEventData value) onGetUser,
    required TResult Function(UserOnPressedEventData value) onPressed,
  }) {
    return onPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserFetchEventData value)? onGetUser,
    TResult? Function(UserOnPressedEventData value)? onPressed,
  }) {
    return onPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserFetchEventData value)? onGetUser,
    TResult Function(UserOnPressedEventData value)? onPressed,
    required TResult orElse(),
  }) {
    if (onPressed != null) {
      return onPressed(this);
    }
    return orElse();
  }
}

abstract class UserOnPressedEventData implements UserEvent {
  const factory UserOnPressedEventData() = _$UserOnPressedEventDataImpl;
}
