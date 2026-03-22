// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $QuestionsTableTable extends QuestionsTable
    with TableInfo<$QuestionsTableTable, QuestionsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuestionsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subTopicMeta =
      const VerificationMeta('subTopic');
  @override
  late final GeneratedColumn<String> subTopic = GeneratedColumn<String>(
      'sub_topic', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _questionMeta =
      const VerificationMeta('question');
  @override
  late final GeneratedColumn<String> question = GeneratedColumn<String>(
      'question', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _optionsMeta =
      const VerificationMeta('options');
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> options =
      GeneratedColumn<String>('options', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<List<String>>($QuestionsTableTable.$converteroptions);
  static const VerificationMeta _correctAnswerMeta =
      const VerificationMeta('correctAnswer');
  @override
  late final GeneratedColumn<int> correctAnswer = GeneratedColumn<int>(
      'correct_answer', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _explanationMeta =
      const VerificationMeta('explanation');
  @override
  late final GeneratedColumn<String> explanation = GeneratedColumn<String>(
      'explanation', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _difficultyMeta =
      const VerificationMeta('difficulty');
  @override
  late final GeneratedColumn<String> difficulty = GeneratedColumn<String>(
      'difficulty', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _tkpWeightsMeta =
      const VerificationMeta('tkpWeights');
  @override
  late final GeneratedColumnWithTypeConverter<List<int>?, String> tkpWeights =
      GeneratedColumn<String>('tkp_weights', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<int>?>(
              $QuestionsTableTable.$convertertkpWeightsn);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        category,
        subTopic,
        question,
        options,
        correctAnswer,
        explanation,
        difficulty,
        tkpWeights
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'questions_table';
  @override
  VerificationContext validateIntegrity(Insertable<QuestionsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('sub_topic')) {
      context.handle(_subTopicMeta,
          subTopic.isAcceptableOrUnknown(data['sub_topic']!, _subTopicMeta));
    } else if (isInserting) {
      context.missing(_subTopicMeta);
    }
    if (data.containsKey('question')) {
      context.handle(_questionMeta,
          question.isAcceptableOrUnknown(data['question']!, _questionMeta));
    } else if (isInserting) {
      context.missing(_questionMeta);
    }
    context.handle(_optionsMeta, const VerificationResult.success());
    if (data.containsKey('correct_answer')) {
      context.handle(
          _correctAnswerMeta,
          correctAnswer.isAcceptableOrUnknown(
              data['correct_answer']!, _correctAnswerMeta));
    } else if (isInserting) {
      context.missing(_correctAnswerMeta);
    }
    if (data.containsKey('explanation')) {
      context.handle(
          _explanationMeta,
          explanation.isAcceptableOrUnknown(
              data['explanation']!, _explanationMeta));
    } else if (isInserting) {
      context.missing(_explanationMeta);
    }
    if (data.containsKey('difficulty')) {
      context.handle(
          _difficultyMeta,
          difficulty.isAcceptableOrUnknown(
              data['difficulty']!, _difficultyMeta));
    } else if (isInserting) {
      context.missing(_difficultyMeta);
    }
    context.handle(_tkpWeightsMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuestionsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuestionsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      subTopic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_topic'])!,
      question: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question'])!,
      options: $QuestionsTableTable.$converteroptions.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}options'])!),
      correctAnswer: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}correct_answer'])!,
      explanation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}explanation'])!,
      difficulty: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}difficulty'])!,
      tkpWeights: $QuestionsTableTable.$convertertkpWeightsn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}tkp_weights'])),
    );
  }

  @override
  $QuestionsTableTable createAlias(String alias) {
    return $QuestionsTableTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $converteroptions =
      const ListConverter();
  static TypeConverter<List<int>, String> $convertertkpWeights =
      const ListIntConverter();
  static TypeConverter<List<int>?, String?> $convertertkpWeightsn =
      NullAwareTypeConverter.wrap($convertertkpWeights);
}

class QuestionsTableData extends DataClass
    implements Insertable<QuestionsTableData> {
  final int id;
  final String category;
  final String subTopic;
  final String question;
  final List<String> options;
  final int correctAnswer;
  final String explanation;
  final String difficulty;
  final List<int>? tkpWeights;
  const QuestionsTableData(
      {required this.id,
      required this.category,
      required this.subTopic,
      required this.question,
      required this.options,
      required this.correctAnswer,
      required this.explanation,
      required this.difficulty,
      this.tkpWeights});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['category'] = Variable<String>(category);
    map['sub_topic'] = Variable<String>(subTopic);
    map['question'] = Variable<String>(question);
    {
      map['options'] = Variable<String>(
          $QuestionsTableTable.$converteroptions.toSql(options));
    }
    map['correct_answer'] = Variable<int>(correctAnswer);
    map['explanation'] = Variable<String>(explanation);
    map['difficulty'] = Variable<String>(difficulty);
    if (!nullToAbsent || tkpWeights != null) {
      map['tkp_weights'] = Variable<String>(
          $QuestionsTableTable.$convertertkpWeightsn.toSql(tkpWeights));
    }
    return map;
  }

  QuestionsTableCompanion toCompanion(bool nullToAbsent) {
    return QuestionsTableCompanion(
      id: Value(id),
      category: Value(category),
      subTopic: Value(subTopic),
      question: Value(question),
      options: Value(options),
      correctAnswer: Value(correctAnswer),
      explanation: Value(explanation),
      difficulty: Value(difficulty),
      tkpWeights: tkpWeights == null && nullToAbsent
          ? const Value.absent()
          : Value(tkpWeights),
    );
  }

  factory QuestionsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuestionsTableData(
      id: serializer.fromJson<int>(json['id']),
      category: serializer.fromJson<String>(json['category']),
      subTopic: serializer.fromJson<String>(json['subTopic']),
      question: serializer.fromJson<String>(json['question']),
      options: serializer.fromJson<List<String>>(json['options']),
      correctAnswer: serializer.fromJson<int>(json['correctAnswer']),
      explanation: serializer.fromJson<String>(json['explanation']),
      difficulty: serializer.fromJson<String>(json['difficulty']),
      tkpWeights: serializer.fromJson<List<int>?>(json['tkpWeights']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'category': serializer.toJson<String>(category),
      'subTopic': serializer.toJson<String>(subTopic),
      'question': serializer.toJson<String>(question),
      'options': serializer.toJson<List<String>>(options),
      'correctAnswer': serializer.toJson<int>(correctAnswer),
      'explanation': serializer.toJson<String>(explanation),
      'difficulty': serializer.toJson<String>(difficulty),
      'tkpWeights': serializer.toJson<List<int>?>(tkpWeights),
    };
  }

  QuestionsTableData copyWith(
          {int? id,
          String? category,
          String? subTopic,
          String? question,
          List<String>? options,
          int? correctAnswer,
          String? explanation,
          String? difficulty,
          Value<List<int>?> tkpWeights = const Value.absent()}) =>
      QuestionsTableData(
        id: id ?? this.id,
        category: category ?? this.category,
        subTopic: subTopic ?? this.subTopic,
        question: question ?? this.question,
        options: options ?? this.options,
        correctAnswer: correctAnswer ?? this.correctAnswer,
        explanation: explanation ?? this.explanation,
        difficulty: difficulty ?? this.difficulty,
        tkpWeights: tkpWeights.present ? tkpWeights.value : this.tkpWeights,
      );
  @override
  String toString() {
    return (StringBuffer('QuestionsTableData(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('subTopic: $subTopic, ')
          ..write('question: $question, ')
          ..write('options: $options, ')
          ..write('correctAnswer: $correctAnswer, ')
          ..write('explanation: $explanation, ')
          ..write('difficulty: $difficulty, ')
          ..write('tkpWeights: $tkpWeights')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, category, subTopic, question, options,
      correctAnswer, explanation, difficulty, tkpWeights);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuestionsTableData &&
          other.id == this.id &&
          other.category == this.category &&
          other.subTopic == this.subTopic &&
          other.question == this.question &&
          other.options == this.options &&
          other.correctAnswer == this.correctAnswer &&
          other.explanation == this.explanation &&
          other.difficulty == this.difficulty &&
          other.tkpWeights == this.tkpWeights);
}

class QuestionsTableCompanion extends UpdateCompanion<QuestionsTableData> {
  final Value<int> id;
  final Value<String> category;
  final Value<String> subTopic;
  final Value<String> question;
  final Value<List<String>> options;
  final Value<int> correctAnswer;
  final Value<String> explanation;
  final Value<String> difficulty;
  final Value<List<int>?> tkpWeights;
  const QuestionsTableCompanion({
    this.id = const Value.absent(),
    this.category = const Value.absent(),
    this.subTopic = const Value.absent(),
    this.question = const Value.absent(),
    this.options = const Value.absent(),
    this.correctAnswer = const Value.absent(),
    this.explanation = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.tkpWeights = const Value.absent(),
  });
  QuestionsTableCompanion.insert({
    this.id = const Value.absent(),
    required String category,
    required String subTopic,
    required String question,
    required List<String> options,
    required int correctAnswer,
    required String explanation,
    required String difficulty,
    this.tkpWeights = const Value.absent(),
  })  : category = Value(category),
        subTopic = Value(subTopic),
        question = Value(question),
        options = Value(options),
        correctAnswer = Value(correctAnswer),
        explanation = Value(explanation),
        difficulty = Value(difficulty);
  static Insertable<QuestionsTableData> custom({
    Expression<int>? id,
    Expression<String>? category,
    Expression<String>? subTopic,
    Expression<String>? question,
    Expression<String>? options,
    Expression<int>? correctAnswer,
    Expression<String>? explanation,
    Expression<String>? difficulty,
    Expression<String>? tkpWeights,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (category != null) 'category': category,
      if (subTopic != null) 'sub_topic': subTopic,
      if (question != null) 'question': question,
      if (options != null) 'options': options,
      if (correctAnswer != null) 'correct_answer': correctAnswer,
      if (explanation != null) 'explanation': explanation,
      if (difficulty != null) 'difficulty': difficulty,
      if (tkpWeights != null) 'tkp_weights': tkpWeights,
    });
  }

  QuestionsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? category,
      Value<String>? subTopic,
      Value<String>? question,
      Value<List<String>>? options,
      Value<int>? correctAnswer,
      Value<String>? explanation,
      Value<String>? difficulty,
      Value<List<int>?>? tkpWeights}) {
    return QuestionsTableCompanion(
      id: id ?? this.id,
      category: category ?? this.category,
      subTopic: subTopic ?? this.subTopic,
      question: question ?? this.question,
      options: options ?? this.options,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      explanation: explanation ?? this.explanation,
      difficulty: difficulty ?? this.difficulty,
      tkpWeights: tkpWeights ?? this.tkpWeights,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (subTopic.present) {
      map['sub_topic'] = Variable<String>(subTopic.value);
    }
    if (question.present) {
      map['question'] = Variable<String>(question.value);
    }
    if (options.present) {
      map['options'] = Variable<String>(
          $QuestionsTableTable.$converteroptions.toSql(options.value));
    }
    if (correctAnswer.present) {
      map['correct_answer'] = Variable<int>(correctAnswer.value);
    }
    if (explanation.present) {
      map['explanation'] = Variable<String>(explanation.value);
    }
    if (difficulty.present) {
      map['difficulty'] = Variable<String>(difficulty.value);
    }
    if (tkpWeights.present) {
      map['tkp_weights'] = Variable<String>(
          $QuestionsTableTable.$convertertkpWeightsn.toSql(tkpWeights.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuestionsTableCompanion(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('subTopic: $subTopic, ')
          ..write('question: $question, ')
          ..write('options: $options, ')
          ..write('correctAnswer: $correctAnswer, ')
          ..write('explanation: $explanation, ')
          ..write('difficulty: $difficulty, ')
          ..write('tkpWeights: $tkpWeights')
          ..write(')'))
        .toString();
  }
}

class $SessionsTableTable extends SessionsTable
    with TableInfo<$SessionsTableTable, SessionsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SessionsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subTopicMeta =
      const VerificationMeta('subTopic');
  @override
  late final GeneratedColumn<String> subTopic = GeneratedColumn<String>(
      'sub_topic', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _startTimeMeta =
      const VerificationMeta('startTime');
  @override
  late final GeneratedColumn<DateTime> startTime = GeneratedColumn<DateTime>(
      'start_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _endTimeMeta =
      const VerificationMeta('endTime');
  @override
  late final GeneratedColumn<DateTime> endTime = GeneratedColumn<DateTime>(
      'end_time', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _totalQuestionsMeta =
      const VerificationMeta('totalQuestions');
  @override
  late final GeneratedColumn<int> totalQuestions = GeneratedColumn<int>(
      'total_questions', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _correctCountMeta =
      const VerificationMeta('correctCount');
  @override
  late final GeneratedColumn<int> correctCount = GeneratedColumn<int>(
      'correct_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _wrongCountMeta =
      const VerificationMeta('wrongCount');
  @override
  late final GeneratedColumn<int> wrongCount = GeneratedColumn<int>(
      'wrong_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _skippedCountMeta =
      const VerificationMeta('skippedCount');
  @override
  late final GeneratedColumn<int> skippedCount = GeneratedColumn<int>(
      'skipped_count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _scoreMeta = const VerificationMeta('score');
  @override
  late final GeneratedColumn<double> score = GeneratedColumn<double>(
      'score', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _durationSecondsMeta =
      const VerificationMeta('durationSeconds');
  @override
  late final GeneratedColumn<int> durationSeconds = GeneratedColumn<int>(
      'duration_seconds', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _isRandomMeta =
      const VerificationMeta('isRandom');
  @override
  late final GeneratedColumn<bool> isRandom = GeneratedColumn<bool>(
      'is_random', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_random" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
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
        isRandom
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sessions_table';
  @override
  VerificationContext validateIntegrity(Insertable<SessionsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('sub_topic')) {
      context.handle(_subTopicMeta,
          subTopic.isAcceptableOrUnknown(data['sub_topic']!, _subTopicMeta));
    }
    if (data.containsKey('start_time')) {
      context.handle(_startTimeMeta,
          startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta));
    } else if (isInserting) {
      context.missing(_startTimeMeta);
    }
    if (data.containsKey('end_time')) {
      context.handle(_endTimeMeta,
          endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta));
    }
    if (data.containsKey('total_questions')) {
      context.handle(
          _totalQuestionsMeta,
          totalQuestions.isAcceptableOrUnknown(
              data['total_questions']!, _totalQuestionsMeta));
    } else if (isInserting) {
      context.missing(_totalQuestionsMeta);
    }
    if (data.containsKey('correct_count')) {
      context.handle(
          _correctCountMeta,
          correctCount.isAcceptableOrUnknown(
              data['correct_count']!, _correctCountMeta));
    } else if (isInserting) {
      context.missing(_correctCountMeta);
    }
    if (data.containsKey('wrong_count')) {
      context.handle(
          _wrongCountMeta,
          wrongCount.isAcceptableOrUnknown(
              data['wrong_count']!, _wrongCountMeta));
    } else if (isInserting) {
      context.missing(_wrongCountMeta);
    }
    if (data.containsKey('skipped_count')) {
      context.handle(
          _skippedCountMeta,
          skippedCount.isAcceptableOrUnknown(
              data['skipped_count']!, _skippedCountMeta));
    } else if (isInserting) {
      context.missing(_skippedCountMeta);
    }
    if (data.containsKey('score')) {
      context.handle(
          _scoreMeta, score.isAcceptableOrUnknown(data['score']!, _scoreMeta));
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    if (data.containsKey('duration_seconds')) {
      context.handle(
          _durationSecondsMeta,
          durationSeconds.isAcceptableOrUnknown(
              data['duration_seconds']!, _durationSecondsMeta));
    } else if (isInserting) {
      context.missing(_durationSecondsMeta);
    }
    if (data.containsKey('is_random')) {
      context.handle(_isRandomMeta,
          isRandom.isAcceptableOrUnknown(data['is_random']!, _isRandomMeta));
    } else if (isInserting) {
      context.missing(_isRandomMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SessionsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SessionsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category'])!,
      subTopic: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_topic']),
      startTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start_time'])!,
      endTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end_time']),
      totalQuestions: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_questions'])!,
      correctCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}correct_count'])!,
      wrongCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}wrong_count'])!,
      skippedCount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}skipped_count'])!,
      score: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}score'])!,
      durationSeconds: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}duration_seconds'])!,
      isRandom: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_random'])!,
    );
  }

  @override
  $SessionsTableTable createAlias(String alias) {
    return $SessionsTableTable(attachedDatabase, alias);
  }
}

class SessionsTableData extends DataClass
    implements Insertable<SessionsTableData> {
  final String id;
  final String category;
  final String? subTopic;
  final DateTime startTime;
  final DateTime? endTime;
  final int totalQuestions;
  final int correctCount;
  final int wrongCount;
  final int skippedCount;
  final double score;
  final int durationSeconds;
  final bool isRandom;
  const SessionsTableData(
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
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['category'] = Variable<String>(category);
    if (!nullToAbsent || subTopic != null) {
      map['sub_topic'] = Variable<String>(subTopic);
    }
    map['start_time'] = Variable<DateTime>(startTime);
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<DateTime>(endTime);
    }
    map['total_questions'] = Variable<int>(totalQuestions);
    map['correct_count'] = Variable<int>(correctCount);
    map['wrong_count'] = Variable<int>(wrongCount);
    map['skipped_count'] = Variable<int>(skippedCount);
    map['score'] = Variable<double>(score);
    map['duration_seconds'] = Variable<int>(durationSeconds);
    map['is_random'] = Variable<bool>(isRandom);
    return map;
  }

  SessionsTableCompanion toCompanion(bool nullToAbsent) {
    return SessionsTableCompanion(
      id: Value(id),
      category: Value(category),
      subTopic: subTopic == null && nullToAbsent
          ? const Value.absent()
          : Value(subTopic),
      startTime: Value(startTime),
      endTime: endTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endTime),
      totalQuestions: Value(totalQuestions),
      correctCount: Value(correctCount),
      wrongCount: Value(wrongCount),
      skippedCount: Value(skippedCount),
      score: Value(score),
      durationSeconds: Value(durationSeconds),
      isRandom: Value(isRandom),
    );
  }

  factory SessionsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SessionsTableData(
      id: serializer.fromJson<String>(json['id']),
      category: serializer.fromJson<String>(json['category']),
      subTopic: serializer.fromJson<String?>(json['subTopic']),
      startTime: serializer.fromJson<DateTime>(json['startTime']),
      endTime: serializer.fromJson<DateTime?>(json['endTime']),
      totalQuestions: serializer.fromJson<int>(json['totalQuestions']),
      correctCount: serializer.fromJson<int>(json['correctCount']),
      wrongCount: serializer.fromJson<int>(json['wrongCount']),
      skippedCount: serializer.fromJson<int>(json['skippedCount']),
      score: serializer.fromJson<double>(json['score']),
      durationSeconds: serializer.fromJson<int>(json['durationSeconds']),
      isRandom: serializer.fromJson<bool>(json['isRandom']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'category': serializer.toJson<String>(category),
      'subTopic': serializer.toJson<String?>(subTopic),
      'startTime': serializer.toJson<DateTime>(startTime),
      'endTime': serializer.toJson<DateTime?>(endTime),
      'totalQuestions': serializer.toJson<int>(totalQuestions),
      'correctCount': serializer.toJson<int>(correctCount),
      'wrongCount': serializer.toJson<int>(wrongCount),
      'skippedCount': serializer.toJson<int>(skippedCount),
      'score': serializer.toJson<double>(score),
      'durationSeconds': serializer.toJson<int>(durationSeconds),
      'isRandom': serializer.toJson<bool>(isRandom),
    };
  }

  SessionsTableData copyWith(
          {String? id,
          String? category,
          Value<String?> subTopic = const Value.absent(),
          DateTime? startTime,
          Value<DateTime?> endTime = const Value.absent(),
          int? totalQuestions,
          int? correctCount,
          int? wrongCount,
          int? skippedCount,
          double? score,
          int? durationSeconds,
          bool? isRandom}) =>
      SessionsTableData(
        id: id ?? this.id,
        category: category ?? this.category,
        subTopic: subTopic.present ? subTopic.value : this.subTopic,
        startTime: startTime ?? this.startTime,
        endTime: endTime.present ? endTime.value : this.endTime,
        totalQuestions: totalQuestions ?? this.totalQuestions,
        correctCount: correctCount ?? this.correctCount,
        wrongCount: wrongCount ?? this.wrongCount,
        skippedCount: skippedCount ?? this.skippedCount,
        score: score ?? this.score,
        durationSeconds: durationSeconds ?? this.durationSeconds,
        isRandom: isRandom ?? this.isRandom,
      );
  @override
  String toString() {
    return (StringBuffer('SessionsTableData(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('subTopic: $subTopic, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('totalQuestions: $totalQuestions, ')
          ..write('correctCount: $correctCount, ')
          ..write('wrongCount: $wrongCount, ')
          ..write('skippedCount: $skippedCount, ')
          ..write('score: $score, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('isRandom: $isRandom')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
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
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SessionsTableData &&
          other.id == this.id &&
          other.category == this.category &&
          other.subTopic == this.subTopic &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.totalQuestions == this.totalQuestions &&
          other.correctCount == this.correctCount &&
          other.wrongCount == this.wrongCount &&
          other.skippedCount == this.skippedCount &&
          other.score == this.score &&
          other.durationSeconds == this.durationSeconds &&
          other.isRandom == this.isRandom);
}

class SessionsTableCompanion extends UpdateCompanion<SessionsTableData> {
  final Value<String> id;
  final Value<String> category;
  final Value<String?> subTopic;
  final Value<DateTime> startTime;
  final Value<DateTime?> endTime;
  final Value<int> totalQuestions;
  final Value<int> correctCount;
  final Value<int> wrongCount;
  final Value<int> skippedCount;
  final Value<double> score;
  final Value<int> durationSeconds;
  final Value<bool> isRandom;
  final Value<int> rowid;
  const SessionsTableCompanion({
    this.id = const Value.absent(),
    this.category = const Value.absent(),
    this.subTopic = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.totalQuestions = const Value.absent(),
    this.correctCount = const Value.absent(),
    this.wrongCount = const Value.absent(),
    this.skippedCount = const Value.absent(),
    this.score = const Value.absent(),
    this.durationSeconds = const Value.absent(),
    this.isRandom = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SessionsTableCompanion.insert({
    required String id,
    required String category,
    this.subTopic = const Value.absent(),
    required DateTime startTime,
    this.endTime = const Value.absent(),
    required int totalQuestions,
    required int correctCount,
    required int wrongCount,
    required int skippedCount,
    required double score,
    required int durationSeconds,
    required bool isRandom,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        category = Value(category),
        startTime = Value(startTime),
        totalQuestions = Value(totalQuestions),
        correctCount = Value(correctCount),
        wrongCount = Value(wrongCount),
        skippedCount = Value(skippedCount),
        score = Value(score),
        durationSeconds = Value(durationSeconds),
        isRandom = Value(isRandom);
  static Insertable<SessionsTableData> custom({
    Expression<String>? id,
    Expression<String>? category,
    Expression<String>? subTopic,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
    Expression<int>? totalQuestions,
    Expression<int>? correctCount,
    Expression<int>? wrongCount,
    Expression<int>? skippedCount,
    Expression<double>? score,
    Expression<int>? durationSeconds,
    Expression<bool>? isRandom,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (category != null) 'category': category,
      if (subTopic != null) 'sub_topic': subTopic,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (totalQuestions != null) 'total_questions': totalQuestions,
      if (correctCount != null) 'correct_count': correctCount,
      if (wrongCount != null) 'wrong_count': wrongCount,
      if (skippedCount != null) 'skipped_count': skippedCount,
      if (score != null) 'score': score,
      if (durationSeconds != null) 'duration_seconds': durationSeconds,
      if (isRandom != null) 'is_random': isRandom,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SessionsTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? category,
      Value<String?>? subTopic,
      Value<DateTime>? startTime,
      Value<DateTime?>? endTime,
      Value<int>? totalQuestions,
      Value<int>? correctCount,
      Value<int>? wrongCount,
      Value<int>? skippedCount,
      Value<double>? score,
      Value<int>? durationSeconds,
      Value<bool>? isRandom,
      Value<int>? rowid}) {
    return SessionsTableCompanion(
      id: id ?? this.id,
      category: category ?? this.category,
      subTopic: subTopic ?? this.subTopic,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      totalQuestions: totalQuestions ?? this.totalQuestions,
      correctCount: correctCount ?? this.correctCount,
      wrongCount: wrongCount ?? this.wrongCount,
      skippedCount: skippedCount ?? this.skippedCount,
      score: score ?? this.score,
      durationSeconds: durationSeconds ?? this.durationSeconds,
      isRandom: isRandom ?? this.isRandom,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (subTopic.present) {
      map['sub_topic'] = Variable<String>(subTopic.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    if (totalQuestions.present) {
      map['total_questions'] = Variable<int>(totalQuestions.value);
    }
    if (correctCount.present) {
      map['correct_count'] = Variable<int>(correctCount.value);
    }
    if (wrongCount.present) {
      map['wrong_count'] = Variable<int>(wrongCount.value);
    }
    if (skippedCount.present) {
      map['skipped_count'] = Variable<int>(skippedCount.value);
    }
    if (score.present) {
      map['score'] = Variable<double>(score.value);
    }
    if (durationSeconds.present) {
      map['duration_seconds'] = Variable<int>(durationSeconds.value);
    }
    if (isRandom.present) {
      map['is_random'] = Variable<bool>(isRandom.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SessionsTableCompanion(')
          ..write('id: $id, ')
          ..write('category: $category, ')
          ..write('subTopic: $subTopic, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('totalQuestions: $totalQuestions, ')
          ..write('correctCount: $correctCount, ')
          ..write('wrongCount: $wrongCount, ')
          ..write('skippedCount: $skippedCount, ')
          ..write('score: $score, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('isRandom: $isRandom, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BookmarksTableTable extends BookmarksTable
    with TableInfo<$BookmarksTableTable, BookmarksTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BookmarksTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _questionIdMeta =
      const VerificationMeta('questionId');
  @override
  late final GeneratedColumn<int> questionId = GeneratedColumn<int>(
      'question_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _savedAtMeta =
      const VerificationMeta('savedAt');
  @override
  late final GeneratedColumn<DateTime> savedAt = GeneratedColumn<DateTime>(
      'saved_at', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [questionId, savedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'bookmarks_table';
  @override
  VerificationContext validateIntegrity(Insertable<BookmarksTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('question_id')) {
      context.handle(
          _questionIdMeta,
          questionId.isAcceptableOrUnknown(
              data['question_id']!, _questionIdMeta));
    }
    if (data.containsKey('saved_at')) {
      context.handle(_savedAtMeta,
          savedAt.isAcceptableOrUnknown(data['saved_at']!, _savedAtMeta));
    } else if (isInserting) {
      context.missing(_savedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {questionId};
  @override
  BookmarksTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BookmarksTableData(
      questionId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}question_id'])!,
      savedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}saved_at'])!,
    );
  }

  @override
  $BookmarksTableTable createAlias(String alias) {
    return $BookmarksTableTable(attachedDatabase, alias);
  }
}

class BookmarksTableData extends DataClass
    implements Insertable<BookmarksTableData> {
  final int questionId;
  final DateTime savedAt;
  const BookmarksTableData({required this.questionId, required this.savedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['question_id'] = Variable<int>(questionId);
    map['saved_at'] = Variable<DateTime>(savedAt);
    return map;
  }

  BookmarksTableCompanion toCompanion(bool nullToAbsent) {
    return BookmarksTableCompanion(
      questionId: Value(questionId),
      savedAt: Value(savedAt),
    );
  }

  factory BookmarksTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BookmarksTableData(
      questionId: serializer.fromJson<int>(json['questionId']),
      savedAt: serializer.fromJson<DateTime>(json['savedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'questionId': serializer.toJson<int>(questionId),
      'savedAt': serializer.toJson<DateTime>(savedAt),
    };
  }

  BookmarksTableData copyWith({int? questionId, DateTime? savedAt}) =>
      BookmarksTableData(
        questionId: questionId ?? this.questionId,
        savedAt: savedAt ?? this.savedAt,
      );
  @override
  String toString() {
    return (StringBuffer('BookmarksTableData(')
          ..write('questionId: $questionId, ')
          ..write('savedAt: $savedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(questionId, savedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BookmarksTableData &&
          other.questionId == this.questionId &&
          other.savedAt == this.savedAt);
}

class BookmarksTableCompanion extends UpdateCompanion<BookmarksTableData> {
  final Value<int> questionId;
  final Value<DateTime> savedAt;
  const BookmarksTableCompanion({
    this.questionId = const Value.absent(),
    this.savedAt = const Value.absent(),
  });
  BookmarksTableCompanion.insert({
    this.questionId = const Value.absent(),
    required DateTime savedAt,
  }) : savedAt = Value(savedAt);
  static Insertable<BookmarksTableData> custom({
    Expression<int>? questionId,
    Expression<DateTime>? savedAt,
  }) {
    return RawValuesInsertable({
      if (questionId != null) 'question_id': questionId,
      if (savedAt != null) 'saved_at': savedAt,
    });
  }

  BookmarksTableCompanion copyWith(
      {Value<int>? questionId, Value<DateTime>? savedAt}) {
    return BookmarksTableCompanion(
      questionId: questionId ?? this.questionId,
      savedAt: savedAt ?? this.savedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (questionId.present) {
      map['question_id'] = Variable<int>(questionId.value);
    }
    if (savedAt.present) {
      map['saved_at'] = Variable<DateTime>(savedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BookmarksTableCompanion(')
          ..write('questionId: $questionId, ')
          ..write('savedAt: $savedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabaseManager get managers => _$AppDatabaseManager(this);
  late final $QuestionsTableTable questionsTable = $QuestionsTableTable(this);
  late final $SessionsTableTable sessionsTable = $SessionsTableTable(this);
  late final $BookmarksTableTable bookmarksTable = $BookmarksTableTable(this);
  late final QuestionDao questionDao = QuestionDao(this as AppDatabase);
  late final SessionDao sessionDao = SessionDao(this as AppDatabase);
  late final BookmarkDao bookmarkDao = BookmarkDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [questionsTable, sessionsTable, bookmarksTable];
}

typedef $$QuestionsTableTableInsertCompanionBuilder = QuestionsTableCompanion
    Function({
  Value<int> id,
  required String category,
  required String subTopic,
  required String question,
  required List<String> options,
  required int correctAnswer,
  required String explanation,
  required String difficulty,
  Value<List<int>?> tkpWeights,
});
typedef $$QuestionsTableTableUpdateCompanionBuilder = QuestionsTableCompanion
    Function({
  Value<int> id,
  Value<String> category,
  Value<String> subTopic,
  Value<String> question,
  Value<List<String>> options,
  Value<int> correctAnswer,
  Value<String> explanation,
  Value<String> difficulty,
  Value<List<int>?> tkpWeights,
});

class $$QuestionsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $QuestionsTableTable,
    QuestionsTableData,
    $$QuestionsTableTableFilterComposer,
    $$QuestionsTableTableOrderingComposer,
    $$QuestionsTableTableProcessedTableManager,
    $$QuestionsTableTableInsertCompanionBuilder,
    $$QuestionsTableTableUpdateCompanionBuilder> {
  $$QuestionsTableTableTableManager(
      _$AppDatabase db, $QuestionsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$QuestionsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$QuestionsTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$QuestionsTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            Value<String> category = const Value.absent(),
            Value<String> subTopic = const Value.absent(),
            Value<String> question = const Value.absent(),
            Value<List<String>> options = const Value.absent(),
            Value<int> correctAnswer = const Value.absent(),
            Value<String> explanation = const Value.absent(),
            Value<String> difficulty = const Value.absent(),
            Value<List<int>?> tkpWeights = const Value.absent(),
          }) =>
              QuestionsTableCompanion(
            id: id,
            category: category,
            subTopic: subTopic,
            question: question,
            options: options,
            correctAnswer: correctAnswer,
            explanation: explanation,
            difficulty: difficulty,
            tkpWeights: tkpWeights,
          ),
          getInsertCompanionBuilder: ({
            Value<int> id = const Value.absent(),
            required String category,
            required String subTopic,
            required String question,
            required List<String> options,
            required int correctAnswer,
            required String explanation,
            required String difficulty,
            Value<List<int>?> tkpWeights = const Value.absent(),
          }) =>
              QuestionsTableCompanion.insert(
            id: id,
            category: category,
            subTopic: subTopic,
            question: question,
            options: options,
            correctAnswer: correctAnswer,
            explanation: explanation,
            difficulty: difficulty,
            tkpWeights: tkpWeights,
          ),
        ));
}

class $$QuestionsTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $QuestionsTableTable,
    QuestionsTableData,
    $$QuestionsTableTableFilterComposer,
    $$QuestionsTableTableOrderingComposer,
    $$QuestionsTableTableProcessedTableManager,
    $$QuestionsTableTableInsertCompanionBuilder,
    $$QuestionsTableTableUpdateCompanionBuilder> {
  $$QuestionsTableTableProcessedTableManager(super.$state);
}

class $$QuestionsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $QuestionsTableTable> {
  $$QuestionsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get subTopic => $state.composableBuilder(
      column: $state.table.subTopic,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get question => $state.composableBuilder(
      column: $state.table.question,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
      get options => $state.composableBuilder(
          column: $state.table.options,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<int> get correctAnswer => $state.composableBuilder(
      column: $state.table.correctAnswer,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get explanation => $state.composableBuilder(
      column: $state.table.explanation,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get difficulty => $state.composableBuilder(
      column: $state.table.difficulty,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<List<int>?, List<int>, String>
      get tkpWeights => $state.composableBuilder(
          column: $state.table.tkpWeights,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));
}

class $$QuestionsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $QuestionsTableTable> {
  $$QuestionsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get subTopic => $state.composableBuilder(
      column: $state.table.subTopic,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get question => $state.composableBuilder(
      column: $state.table.question,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get options => $state.composableBuilder(
      column: $state.table.options,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get correctAnswer => $state.composableBuilder(
      column: $state.table.correctAnswer,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get explanation => $state.composableBuilder(
      column: $state.table.explanation,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get difficulty => $state.composableBuilder(
      column: $state.table.difficulty,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get tkpWeights => $state.composableBuilder(
      column: $state.table.tkpWeights,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SessionsTableTableInsertCompanionBuilder = SessionsTableCompanion
    Function({
  required String id,
  required String category,
  Value<String?> subTopic,
  required DateTime startTime,
  Value<DateTime?> endTime,
  required int totalQuestions,
  required int correctCount,
  required int wrongCount,
  required int skippedCount,
  required double score,
  required int durationSeconds,
  required bool isRandom,
  Value<int> rowid,
});
typedef $$SessionsTableTableUpdateCompanionBuilder = SessionsTableCompanion
    Function({
  Value<String> id,
  Value<String> category,
  Value<String?> subTopic,
  Value<DateTime> startTime,
  Value<DateTime?> endTime,
  Value<int> totalQuestions,
  Value<int> correctCount,
  Value<int> wrongCount,
  Value<int> skippedCount,
  Value<double> score,
  Value<int> durationSeconds,
  Value<bool> isRandom,
  Value<int> rowid,
});

class $$SessionsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SessionsTableTable,
    SessionsTableData,
    $$SessionsTableTableFilterComposer,
    $$SessionsTableTableOrderingComposer,
    $$SessionsTableTableProcessedTableManager,
    $$SessionsTableTableInsertCompanionBuilder,
    $$SessionsTableTableUpdateCompanionBuilder> {
  $$SessionsTableTableTableManager(_$AppDatabase db, $SessionsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SessionsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SessionsTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$SessionsTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<String> id = const Value.absent(),
            Value<String> category = const Value.absent(),
            Value<String?> subTopic = const Value.absent(),
            Value<DateTime> startTime = const Value.absent(),
            Value<DateTime?> endTime = const Value.absent(),
            Value<int> totalQuestions = const Value.absent(),
            Value<int> correctCount = const Value.absent(),
            Value<int> wrongCount = const Value.absent(),
            Value<int> skippedCount = const Value.absent(),
            Value<double> score = const Value.absent(),
            Value<int> durationSeconds = const Value.absent(),
            Value<bool> isRandom = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SessionsTableCompanion(
            id: id,
            category: category,
            subTopic: subTopic,
            startTime: startTime,
            endTime: endTime,
            totalQuestions: totalQuestions,
            correctCount: correctCount,
            wrongCount: wrongCount,
            skippedCount: skippedCount,
            score: score,
            durationSeconds: durationSeconds,
            isRandom: isRandom,
            rowid: rowid,
          ),
          getInsertCompanionBuilder: ({
            required String id,
            required String category,
            Value<String?> subTopic = const Value.absent(),
            required DateTime startTime,
            Value<DateTime?> endTime = const Value.absent(),
            required int totalQuestions,
            required int correctCount,
            required int wrongCount,
            required int skippedCount,
            required double score,
            required int durationSeconds,
            required bool isRandom,
            Value<int> rowid = const Value.absent(),
          }) =>
              SessionsTableCompanion.insert(
            id: id,
            category: category,
            subTopic: subTopic,
            startTime: startTime,
            endTime: endTime,
            totalQuestions: totalQuestions,
            correctCount: correctCount,
            wrongCount: wrongCount,
            skippedCount: skippedCount,
            score: score,
            durationSeconds: durationSeconds,
            isRandom: isRandom,
            rowid: rowid,
          ),
        ));
}

class $$SessionsTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $SessionsTableTable,
    SessionsTableData,
    $$SessionsTableTableFilterComposer,
    $$SessionsTableTableOrderingComposer,
    $$SessionsTableTableProcessedTableManager,
    $$SessionsTableTableInsertCompanionBuilder,
    $$SessionsTableTableUpdateCompanionBuilder> {
  $$SessionsTableTableProcessedTableManager(super.$state);
}

class $$SessionsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SessionsTableTable> {
  $$SessionsTableTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get subTopic => $state.composableBuilder(
      column: $state.table.subTopic,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get startTime => $state.composableBuilder(
      column: $state.table.startTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get endTime => $state.composableBuilder(
      column: $state.table.endTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get totalQuestions => $state.composableBuilder(
      column: $state.table.totalQuestions,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get correctCount => $state.composableBuilder(
      column: $state.table.correctCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get wrongCount => $state.composableBuilder(
      column: $state.table.wrongCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get skippedCount => $state.composableBuilder(
      column: $state.table.skippedCount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get score => $state.composableBuilder(
      column: $state.table.score,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get durationSeconds => $state.composableBuilder(
      column: $state.table.durationSeconds,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isRandom => $state.composableBuilder(
      column: $state.table.isRandom,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SessionsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SessionsTableTable> {
  $$SessionsTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get category => $state.composableBuilder(
      column: $state.table.category,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get subTopic => $state.composableBuilder(
      column: $state.table.subTopic,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get startTime => $state.composableBuilder(
      column: $state.table.startTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get endTime => $state.composableBuilder(
      column: $state.table.endTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get totalQuestions => $state.composableBuilder(
      column: $state.table.totalQuestions,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get correctCount => $state.composableBuilder(
      column: $state.table.correctCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get wrongCount => $state.composableBuilder(
      column: $state.table.wrongCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get skippedCount => $state.composableBuilder(
      column: $state.table.skippedCount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get score => $state.composableBuilder(
      column: $state.table.score,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get durationSeconds => $state.composableBuilder(
      column: $state.table.durationSeconds,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isRandom => $state.composableBuilder(
      column: $state.table.isRandom,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$BookmarksTableTableInsertCompanionBuilder = BookmarksTableCompanion
    Function({
  Value<int> questionId,
  required DateTime savedAt,
});
typedef $$BookmarksTableTableUpdateCompanionBuilder = BookmarksTableCompanion
    Function({
  Value<int> questionId,
  Value<DateTime> savedAt,
});

class $$BookmarksTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BookmarksTableTable,
    BookmarksTableData,
    $$BookmarksTableTableFilterComposer,
    $$BookmarksTableTableOrderingComposer,
    $$BookmarksTableTableProcessedTableManager,
    $$BookmarksTableTableInsertCompanionBuilder,
    $$BookmarksTableTableUpdateCompanionBuilder> {
  $$BookmarksTableTableTableManager(
      _$AppDatabase db, $BookmarksTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$BookmarksTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$BookmarksTableTableOrderingComposer(ComposerState(db, table)),
          getChildManagerBuilder: (p) =>
              $$BookmarksTableTableProcessedTableManager(p),
          getUpdateCompanionBuilder: ({
            Value<int> questionId = const Value.absent(),
            Value<DateTime> savedAt = const Value.absent(),
          }) =>
              BookmarksTableCompanion(
            questionId: questionId,
            savedAt: savedAt,
          ),
          getInsertCompanionBuilder: ({
            Value<int> questionId = const Value.absent(),
            required DateTime savedAt,
          }) =>
              BookmarksTableCompanion.insert(
            questionId: questionId,
            savedAt: savedAt,
          ),
        ));
}

class $$BookmarksTableTableProcessedTableManager extends ProcessedTableManager<
    _$AppDatabase,
    $BookmarksTableTable,
    BookmarksTableData,
    $$BookmarksTableTableFilterComposer,
    $$BookmarksTableTableOrderingComposer,
    $$BookmarksTableTableProcessedTableManager,
    $$BookmarksTableTableInsertCompanionBuilder,
    $$BookmarksTableTableUpdateCompanionBuilder> {
  $$BookmarksTableTableProcessedTableManager(super.$state);
}

class $$BookmarksTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BookmarksTableTable> {
  $$BookmarksTableTableFilterComposer(super.$state);
  ColumnFilters<int> get questionId => $state.composableBuilder(
      column: $state.table.questionId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get savedAt => $state.composableBuilder(
      column: $state.table.savedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$BookmarksTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BookmarksTableTable> {
  $$BookmarksTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get questionId => $state.composableBuilder(
      column: $state.table.questionId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get savedAt => $state.composableBuilder(
      column: $state.table.savedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class _$AppDatabaseManager {
  final _$AppDatabase _db;
  _$AppDatabaseManager(this._db);
  $$QuestionsTableTableTableManager get questionsTable =>
      $$QuestionsTableTableTableManager(_db, _db.questionsTable);
  $$SessionsTableTableTableManager get sessionsTable =>
      $$SessionsTableTableTableManager(_db, _db.sessionsTable);
  $$BookmarksTableTableTableManager get bookmarksTable =>
      $$BookmarksTableTableTableManager(_db, _db.bookmarksTable);
}
