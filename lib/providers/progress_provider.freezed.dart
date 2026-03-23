// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryProgress {
  int get totalAttempts => throw _privateConstructorUsedError;
  double get averageScore => throw _privateConstructorUsedError;
  List<String> get completedSubTopics => throw _privateConstructorUsedError;
  double? get lastScore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryProgressCopyWith<CategoryProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryProgressCopyWith<$Res> {
  factory $CategoryProgressCopyWith(
          CategoryProgress value, $Res Function(CategoryProgress) then) =
      _$CategoryProgressCopyWithImpl<$Res, CategoryProgress>;
  @useResult
  $Res call(
      {int totalAttempts,
      double averageScore,
      List<String> completedSubTopics,
      double? lastScore});
}

/// @nodoc
class _$CategoryProgressCopyWithImpl<$Res, $Val extends CategoryProgress>
    implements $CategoryProgressCopyWith<$Res> {
  _$CategoryProgressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAttempts = null,
    Object? averageScore = null,
    Object? completedSubTopics = null,
    Object? lastScore = freezed,
  }) {
    return _then(_value.copyWith(
      totalAttempts: null == totalAttempts
          ? _value.totalAttempts
          : totalAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
      completedSubTopics: null == completedSubTopics
          ? _value.completedSubTopics
          : completedSubTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastScore: freezed == lastScore
          ? _value.lastScore
          : lastScore // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryProgressImplCopyWith<$Res>
    implements $CategoryProgressCopyWith<$Res> {
  factory _$$CategoryProgressImplCopyWith(_$CategoryProgressImpl value,
          $Res Function(_$CategoryProgressImpl) then) =
      __$$CategoryProgressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalAttempts,
      double averageScore,
      List<String> completedSubTopics,
      double? lastScore});
}

/// @nodoc
class __$$CategoryProgressImplCopyWithImpl<$Res>
    extends _$CategoryProgressCopyWithImpl<$Res, _$CategoryProgressImpl>
    implements _$$CategoryProgressImplCopyWith<$Res> {
  __$$CategoryProgressImplCopyWithImpl(_$CategoryProgressImpl _value,
      $Res Function(_$CategoryProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAttempts = null,
    Object? averageScore = null,
    Object? completedSubTopics = null,
    Object? lastScore = freezed,
  }) {
    return _then(_$CategoryProgressImpl(
      totalAttempts: null == totalAttempts
          ? _value.totalAttempts
          : totalAttempts // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
      completedSubTopics: null == completedSubTopics
          ? _value._completedSubTopics
          : completedSubTopics // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastScore: freezed == lastScore
          ? _value.lastScore
          : lastScore // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$CategoryProgressImpl implements _CategoryProgress {
  const _$CategoryProgressImpl(
      {required this.totalAttempts,
      required this.averageScore,
      required final List<String> completedSubTopics,
      this.lastScore})
      : _completedSubTopics = completedSubTopics;

  @override
  final int totalAttempts;
  @override
  final double averageScore;
  final List<String> _completedSubTopics;
  @override
  List<String> get completedSubTopics {
    if (_completedSubTopics is EqualUnmodifiableListView)
      return _completedSubTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_completedSubTopics);
  }

  @override
  final double? lastScore;

  @override
  String toString() {
    return 'CategoryProgress(totalAttempts: $totalAttempts, averageScore: $averageScore, completedSubTopics: $completedSubTopics, lastScore: $lastScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryProgressImpl &&
            (identical(other.totalAttempts, totalAttempts) ||
                other.totalAttempts == totalAttempts) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore) &&
            const DeepCollectionEquality()
                .equals(other._completedSubTopics, _completedSubTopics) &&
            (identical(other.lastScore, lastScore) ||
                other.lastScore == lastScore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalAttempts, averageScore,
      const DeepCollectionEquality().hash(_completedSubTopics), lastScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryProgressImplCopyWith<_$CategoryProgressImpl> get copyWith =>
      __$$CategoryProgressImplCopyWithImpl<_$CategoryProgressImpl>(
          this, _$identity);
}

abstract class _CategoryProgress implements CategoryProgress {
  const factory _CategoryProgress(
      {required final int totalAttempts,
      required final double averageScore,
      required final List<String> completedSubTopics,
      final double? lastScore}) = _$CategoryProgressImpl;

  @override
  int get totalAttempts;
  @override
  double get averageScore;
  @override
  List<String> get completedSubTopics;
  @override
  double? get lastScore;
  @override
  @JsonKey(ignore: true)
  _$$CategoryProgressImplCopyWith<_$CategoryProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProgressState {
  Map<String, CategoryProgress> get categoryProgress =>
      throw _privateConstructorUsedError;
  int get dailyProgress => throw _privateConstructorUsedError;
  int get dailyTarget => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgressStateCopyWith<ProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStateCopyWith<$Res> {
  factory $ProgressStateCopyWith(
          ProgressState value, $Res Function(ProgressState) then) =
      _$ProgressStateCopyWithImpl<$Res, ProgressState>;
  @useResult
  $Res call(
      {Map<String, CategoryProgress> categoryProgress,
      int dailyProgress,
      int dailyTarget});
}

/// @nodoc
class _$ProgressStateCopyWithImpl<$Res, $Val extends ProgressState>
    implements $ProgressStateCopyWith<$Res> {
  _$ProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryProgress = null,
    Object? dailyProgress = null,
    Object? dailyTarget = null,
  }) {
    return _then(_value.copyWith(
      categoryProgress: null == categoryProgress
          ? _value.categoryProgress
          : categoryProgress // ignore: cast_nullable_to_non_nullable
              as Map<String, CategoryProgress>,
      dailyProgress: null == dailyProgress
          ? _value.dailyProgress
          : dailyProgress // ignore: cast_nullable_to_non_nullable
              as int,
      dailyTarget: null == dailyTarget
          ? _value.dailyTarget
          : dailyTarget // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgressStateImplCopyWith<$Res>
    implements $ProgressStateCopyWith<$Res> {
  factory _$$ProgressStateImplCopyWith(
          _$ProgressStateImpl value, $Res Function(_$ProgressStateImpl) then) =
      __$$ProgressStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, CategoryProgress> categoryProgress,
      int dailyProgress,
      int dailyTarget});
}

/// @nodoc
class __$$ProgressStateImplCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$ProgressStateImpl>
    implements _$$ProgressStateImplCopyWith<$Res> {
  __$$ProgressStateImplCopyWithImpl(
      _$ProgressStateImpl _value, $Res Function(_$ProgressStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryProgress = null,
    Object? dailyProgress = null,
    Object? dailyTarget = null,
  }) {
    return _then(_$ProgressStateImpl(
      categoryProgress: null == categoryProgress
          ? _value._categoryProgress
          : categoryProgress // ignore: cast_nullable_to_non_nullable
              as Map<String, CategoryProgress>,
      dailyProgress: null == dailyProgress
          ? _value.dailyProgress
          : dailyProgress // ignore: cast_nullable_to_non_nullable
              as int,
      dailyTarget: null == dailyTarget
          ? _value.dailyTarget
          : dailyTarget // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ProgressStateImpl implements _ProgressState {
  const _$ProgressStateImpl(
      {required final Map<String, CategoryProgress> categoryProgress,
      required this.dailyProgress,
      this.dailyTarget = 20})
      : _categoryProgress = categoryProgress;

  final Map<String, CategoryProgress> _categoryProgress;
  @override
  Map<String, CategoryProgress> get categoryProgress {
    if (_categoryProgress is EqualUnmodifiableMapView) return _categoryProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_categoryProgress);
  }

  @override
  final int dailyProgress;
  @override
  @JsonKey()
  final int dailyTarget;

  @override
  String toString() {
    return 'ProgressState(categoryProgress: $categoryProgress, dailyProgress: $dailyProgress, dailyTarget: $dailyTarget)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgressStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryProgress, _categoryProgress) &&
            (identical(other.dailyProgress, dailyProgress) ||
                other.dailyProgress == dailyProgress) &&
            (identical(other.dailyTarget, dailyTarget) ||
                other.dailyTarget == dailyTarget));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categoryProgress),
      dailyProgress,
      dailyTarget);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgressStateImplCopyWith<_$ProgressStateImpl> get copyWith =>
      __$$ProgressStateImplCopyWithImpl<_$ProgressStateImpl>(this, _$identity);
}

abstract class _ProgressState implements ProgressState {
  const factory _ProgressState(
      {required final Map<String, CategoryProgress> categoryProgress,
      required final int dailyProgress,
      final int dailyTarget}) = _$ProgressStateImpl;

  @override
  Map<String, CategoryProgress> get categoryProgress;
  @override
  int get dailyProgress;
  @override
  int get dailyTarget;
  @override
  @JsonKey(ignore: true)
  _$$ProgressStateImplCopyWith<_$ProgressStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
