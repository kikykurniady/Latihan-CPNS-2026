// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Question _$QuestionFromJson(Map<String, dynamic> json) {
  return _Question.fromJson(json);
}

/// @nodoc
mixin _$Question {
  int get id => throw _privateConstructorUsedError;
  String get category =>
      throw _privateConstructorUsedError; // 'TWK' | 'TIU' | 'TKP'
  String get subTopic => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  List<String> get options =>
      throw _privateConstructorUsedError; // 5 elements (A-E)
  int get correctAnswer => throw _privateConstructorUsedError; // index 0-4
  String get explanation => throw _privateConstructorUsedError;
  String get difficulty =>
      throw _privateConstructorUsedError; // 'mudah' | 'sedang' | 'sulit'
  List<int>? get tkpWeights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionCopyWith<Question> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionCopyWith<$Res> {
  factory $QuestionCopyWith(Question value, $Res Function(Question) then) =
      _$QuestionCopyWithImpl<$Res, Question>;
  @useResult
  $Res call(
      {int id,
      String category,
      String subTopic,
      String question,
      List<String> options,
      int correctAnswer,
      String explanation,
      String difficulty,
      List<int>? tkpWeights});
}

/// @nodoc
class _$QuestionCopyWithImpl<$Res, $Val extends Question>
    implements $QuestionCopyWith<$Res> {
  _$QuestionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? subTopic = null,
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
    Object? explanation = null,
    Object? difficulty = null,
    Object? tkpWeights = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subTopic: null == subTopic
          ? _value.subTopic
          : subTopic // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      tkpWeights: freezed == tkpWeights
          ? _value.tkpWeights
          : tkpWeights // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionImplCopyWith<$Res>
    implements $QuestionCopyWith<$Res> {
  factory _$$QuestionImplCopyWith(
          _$QuestionImpl value, $Res Function(_$QuestionImpl) then) =
      __$$QuestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String category,
      String subTopic,
      String question,
      List<String> options,
      int correctAnswer,
      String explanation,
      String difficulty,
      List<int>? tkpWeights});
}

/// @nodoc
class __$$QuestionImplCopyWithImpl<$Res>
    extends _$QuestionCopyWithImpl<$Res, _$QuestionImpl>
    implements _$$QuestionImplCopyWith<$Res> {
  __$$QuestionImplCopyWithImpl(
      _$QuestionImpl _value, $Res Function(_$QuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
    Object? subTopic = null,
    Object? question = null,
    Object? options = null,
    Object? correctAnswer = null,
    Object? explanation = null,
    Object? difficulty = null,
    Object? tkpWeights = freezed,
  }) {
    return _then(_$QuestionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subTopic: null == subTopic
          ? _value.subTopic
          : subTopic // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: null == explanation
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String,
      difficulty: null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
      tkpWeights: freezed == tkpWeights
          ? _value._tkpWeights
          : tkpWeights // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$QuestionImpl implements _Question {
  const _$QuestionImpl(
      {required this.id,
      required this.category,
      required this.subTopic,
      required this.question,
      required final List<String> options,
      required this.correctAnswer,
      required this.explanation,
      required this.difficulty,
      final List<int>? tkpWeights})
      : _options = options,
        _tkpWeights = tkpWeights;

  factory _$QuestionImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionImplFromJson(json);

  @override
  final int id;
  @override
  final String category;
// 'TWK' | 'TIU' | 'TKP'
  @override
  final String subTopic;
  @override
  final String question;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

// 5 elements (A-E)
  @override
  final int correctAnswer;
// index 0-4
  @override
  final String explanation;
  @override
  final String difficulty;
// 'mudah' | 'sedang' | 'sulit'
  final List<int>? _tkpWeights;
// 'mudah' | 'sedang' | 'sulit'
  @override
  List<int>? get tkpWeights {
    final value = _tkpWeights;
    if (value == null) return null;
    if (_tkpWeights is EqualUnmodifiableListView) return _tkpWeights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Question(id: $id, category: $category, subTopic: $subTopic, question: $question, options: $options, correctAnswer: $correctAnswer, explanation: $explanation, difficulty: $difficulty, tkpWeights: $tkpWeights)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subTopic, subTopic) ||
                other.subTopic == subTopic) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.explanation, explanation) ||
                other.explanation == explanation) &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty) &&
            const DeepCollectionEquality()
                .equals(other._tkpWeights, _tkpWeights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category,
      subTopic,
      question,
      const DeepCollectionEquality().hash(_options),
      correctAnswer,
      explanation,
      difficulty,
      const DeepCollectionEquality().hash(_tkpWeights));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      __$$QuestionImplCopyWithImpl<_$QuestionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionImplToJson(
      this,
    );
  }
}

abstract class _Question implements Question {
  const factory _Question(
      {required final int id,
      required final String category,
      required final String subTopic,
      required final String question,
      required final List<String> options,
      required final int correctAnswer,
      required final String explanation,
      required final String difficulty,
      final List<int>? tkpWeights}) = _$QuestionImpl;

  factory _Question.fromJson(Map<String, dynamic> json) =
      _$QuestionImpl.fromJson;

  @override
  int get id;
  @override
  String get category;
  @override // 'TWK' | 'TIU' | 'TKP'
  String get subTopic;
  @override
  String get question;
  @override
  List<String> get options;
  @override // 5 elements (A-E)
  int get correctAnswer;
  @override // index 0-4
  String get explanation;
  @override
  String get difficulty;
  @override // 'mudah' | 'sedang' | 'sulit'
  List<int>? get tkpWeights;
  @override
  @JsonKey(ignore: true)
  _$$QuestionImplCopyWith<_$QuestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
