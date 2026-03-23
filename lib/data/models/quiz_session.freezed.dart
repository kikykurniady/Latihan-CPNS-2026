// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuizSession _$QuizSessionFromJson(Map<String, dynamic> json) {
  return _QuizSession.fromJson(json);
}

/// @nodoc
mixin _$QuizSession {
  String get id => throw _privateConstructorUsedError; // uuid
  String get category => throw _privateConstructorUsedError;
  String? get subTopic => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  int get totalQuestions => throw _privateConstructorUsedError;
  int get correctCount => throw _privateConstructorUsedError;
  int get wrongCount => throw _privateConstructorUsedError;
  int get skippedCount => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;
  bool get isRandom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizSessionCopyWith<QuizSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSessionCopyWith<$Res> {
  factory $QuizSessionCopyWith(
          QuizSession value, $Res Function(QuizSession) then) =
      _$QuizSessionCopyWithImpl<$Res, QuizSession>;
  @useResult
  $Res call(
      {String id,
      String category,
      String? subTopic,
      DateTime startTime,
      DateTime? endTime,
      int totalQuestions,
      int correctCount,
      int wrongCount,
      int skippedCount,
      double score,
      int durationSeconds,
      bool isRandom});
}

/// @nodoc
class _$QuizSessionCopyWithImpl<$Res, $Val extends QuizSession>
    implements $QuizSessionCopyWith<$Res> {
  _$QuizSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? subTopic = freezed,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? totalQuestions = null,
    Object? correctCount = null,
    Object? wrongCount = null,
    Object? skippedCount = null,
    Object? score = null,
    Object? durationSeconds = null,
    Object? isRandom = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subTopic: freezed == subTopic
          ? _value.subTopic
          : subTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctCount: null == correctCount
          ? _value.correctCount
          : correctCount // ignore: cast_nullable_to_non_nullable
              as int,
      wrongCount: null == wrongCount
          ? _value.wrongCount
          : wrongCount // ignore: cast_nullable_to_non_nullable
              as int,
      skippedCount: null == skippedCount
          ? _value.skippedCount
          : skippedCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isRandom: null == isRandom
          ? _value.isRandom
          : isRandom // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizSessionImplCopyWith<$Res>
    implements $QuizSessionCopyWith<$Res> {
  factory _$$QuizSessionImplCopyWith(
          _$QuizSessionImpl value, $Res Function(_$QuizSessionImpl) then) =
      __$$QuizSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String category,
      String? subTopic,
      DateTime startTime,
      DateTime? endTime,
      int totalQuestions,
      int correctCount,
      int wrongCount,
      int skippedCount,
      double score,
      int durationSeconds,
      bool isRandom});
}

/// @nodoc
class __$$QuizSessionImplCopyWithImpl<$Res>
    extends _$QuizSessionCopyWithImpl<$Res, _$QuizSessionImpl>
    implements _$$QuizSessionImplCopyWith<$Res> {
  __$$QuizSessionImplCopyWithImpl(
      _$QuizSessionImpl _value, $Res Function(_$QuizSessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? subTopic = freezed,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? totalQuestions = null,
    Object? correctCount = null,
    Object? wrongCount = null,
    Object? skippedCount = null,
    Object? score = null,
    Object? durationSeconds = null,
    Object? isRandom = null,
  }) {
    return _then(_$QuizSessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subTopic: freezed == subTopic
          ? _value.subTopic
          : subTopic // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: null == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalQuestions: null == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int,
      correctCount: null == correctCount
          ? _value.correctCount
          : correctCount // ignore: cast_nullable_to_non_nullable
              as int,
      wrongCount: null == wrongCount
          ? _value.wrongCount
          : wrongCount // ignore: cast_nullable_to_non_nullable
              as int,
      skippedCount: null == skippedCount
          ? _value.skippedCount
          : skippedCount // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      isRandom: null == isRandom
          ? _value.isRandom
          : isRandom // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizSessionImpl implements _QuizSession {
  const _$QuizSessionImpl(
      {required this.id,
      required this.category,
      this.subTopic,
      required this.startTime,
      this.endTime,
      required this.totalQuestions,
      required this.correctCount,
      required this.wrongCount,
      required this.skippedCount,
      required this.score,
      required this.durationSeconds,
      required this.isRandom});

  factory _$QuizSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizSessionImplFromJson(json);

  @override
  final String id;
// uuid
  @override
  final String category;
  @override
  final String? subTopic;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  @override
  final int totalQuestions;
  @override
  final int correctCount;
  @override
  final int wrongCount;
  @override
  final int skippedCount;
  @override
  final double score;
  @override
  final int durationSeconds;
  @override
  final bool isRandom;

  @override
  String toString() {
    return 'QuizSession(id: $id, category: $category, subTopic: $subTopic, startTime: $startTime, endTime: $endTime, totalQuestions: $totalQuestions, correctCount: $correctCount, wrongCount: $wrongCount, skippedCount: $skippedCount, score: $score, durationSeconds: $durationSeconds, isRandom: $isRandom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizSessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subTopic, subTopic) ||
                other.subTopic == subTopic) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctCount, correctCount) ||
                other.correctCount == correctCount) &&
            (identical(other.wrongCount, wrongCount) ||
                other.wrongCount == wrongCount) &&
            (identical(other.skippedCount, skippedCount) ||
                other.skippedCount == skippedCount) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.isRandom, isRandom) ||
                other.isRandom == isRandom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category,
      subTopic,
      startTime,
      endTime,
      totalQuestions,
      correctCount,
      wrongCount,
      skippedCount,
      score,
      durationSeconds,
      isRandom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizSessionImplCopyWith<_$QuizSessionImpl> get copyWith =>
      __$$QuizSessionImplCopyWithImpl<_$QuizSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizSessionImplToJson(
      this,
    );
  }
}

abstract class _QuizSession implements QuizSession {
  const factory _QuizSession(
      {required final String id,
      required final String category,
      final String? subTopic,
      required final DateTime startTime,
      final DateTime? endTime,
      required final int totalQuestions,
      required final int correctCount,
      required final int wrongCount,
      required final int skippedCount,
      required final double score,
      required final int durationSeconds,
      required final bool isRandom}) = _$QuizSessionImpl;

  factory _QuizSession.fromJson(Map<String, dynamic> json) =
      _$QuizSessionImpl.fromJson;

  @override
  String get id;
  @override // uuid
  String get category;
  @override
  String? get subTopic;
  @override
  DateTime get startTime;
  @override
  DateTime? get endTime;
  @override
  int get totalQuestions;
  @override
  int get correctCount;
  @override
  int get wrongCount;
  @override
  int get skippedCount;
  @override
  double get score;
  @override
  int get durationSeconds;
  @override
  bool get isRandom;
  @override
  @JsonKey(ignore: true)
  _$$QuizSessionImplCopyWith<_$QuizSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
