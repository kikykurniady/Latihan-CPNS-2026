// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'streak_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StreakState {
  int get currentStreak => throw _privateConstructorUsedError;
  int get longestStreak => throw _privateConstructorUsedError;
  int get todayCount => throw _privateConstructorUsedError;
  DateTime? get lastActiveDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StreakStateCopyWith<StreakState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreakStateCopyWith<$Res> {
  factory $StreakStateCopyWith(
          StreakState value, $Res Function(StreakState) then) =
      _$StreakStateCopyWithImpl<$Res, StreakState>;
  @useResult
  $Res call(
      {int currentStreak,
      int longestStreak,
      int todayCount,
      DateTime? lastActiveDate});
}

/// @nodoc
class _$StreakStateCopyWithImpl<$Res, $Val extends StreakState>
    implements $StreakStateCopyWith<$Res> {
  _$StreakStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStreak = null,
    Object? longestStreak = null,
    Object? todayCount = null,
    Object? lastActiveDate = freezed,
  }) {
    return _then(_value.copyWith(
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      todayCount: null == todayCount
          ? _value.todayCount
          : todayCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastActiveDate: freezed == lastActiveDate
          ? _value.lastActiveDate
          : lastActiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreakStateImplCopyWith<$Res>
    implements $StreakStateCopyWith<$Res> {
  factory _$$StreakStateImplCopyWith(
          _$StreakStateImpl value, $Res Function(_$StreakStateImpl) then) =
      __$$StreakStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentStreak,
      int longestStreak,
      int todayCount,
      DateTime? lastActiveDate});
}

/// @nodoc
class __$$StreakStateImplCopyWithImpl<$Res>
    extends _$StreakStateCopyWithImpl<$Res, _$StreakStateImpl>
    implements _$$StreakStateImplCopyWith<$Res> {
  __$$StreakStateImplCopyWithImpl(
      _$StreakStateImpl _value, $Res Function(_$StreakStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStreak = null,
    Object? longestStreak = null,
    Object? todayCount = null,
    Object? lastActiveDate = freezed,
  }) {
    return _then(_$StreakStateImpl(
      currentStreak: null == currentStreak
          ? _value.currentStreak
          : currentStreak // ignore: cast_nullable_to_non_nullable
              as int,
      longestStreak: null == longestStreak
          ? _value.longestStreak
          : longestStreak // ignore: cast_nullable_to_non_nullable
              as int,
      todayCount: null == todayCount
          ? _value.todayCount
          : todayCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastActiveDate: freezed == lastActiveDate
          ? _value.lastActiveDate
          : lastActiveDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$StreakStateImpl implements _StreakState {
  const _$StreakStateImpl(
      {required this.currentStreak,
      required this.longestStreak,
      required this.todayCount,
      this.lastActiveDate});

  @override
  final int currentStreak;
  @override
  final int longestStreak;
  @override
  final int todayCount;
  @override
  final DateTime? lastActiveDate;

  @override
  String toString() {
    return 'StreakState(currentStreak: $currentStreak, longestStreak: $longestStreak, todayCount: $todayCount, lastActiveDate: $lastActiveDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreakStateImpl &&
            (identical(other.currentStreak, currentStreak) ||
                other.currentStreak == currentStreak) &&
            (identical(other.longestStreak, longestStreak) ||
                other.longestStreak == longestStreak) &&
            (identical(other.todayCount, todayCount) ||
                other.todayCount == todayCount) &&
            (identical(other.lastActiveDate, lastActiveDate) ||
                other.lastActiveDate == lastActiveDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentStreak, longestStreak, todayCount, lastActiveDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StreakStateImplCopyWith<_$StreakStateImpl> get copyWith =>
      __$$StreakStateImplCopyWithImpl<_$StreakStateImpl>(this, _$identity);
}

abstract class _StreakState implements StreakState {
  const factory _StreakState(
      {required final int currentStreak,
      required final int longestStreak,
      required final int todayCount,
      final DateTime? lastActiveDate}) = _$StreakStateImpl;

  @override
  int get currentStreak;
  @override
  int get longestStreak;
  @override
  int get todayCount;
  @override
  DateTime? get lastActiveDate;
  @override
  @JsonKey(ignore: true)
  _$$StreakStateImplCopyWith<_$StreakStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
