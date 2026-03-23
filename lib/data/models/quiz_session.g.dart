// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizSession _$QuizSessionFromJson(Map<String, dynamic> json) => QuizSession(
      id: json['id'] as String,
      category: json['category'] as String,
      subTopic: json['subTopic'] as String?,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      correctCount: (json['correctCount'] as num).toInt(),
      wrongCount: (json['wrongCount'] as num).toInt(),
      skippedCount: (json['skippedCount'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      durationSeconds: (json['durationSeconds'] as num).toInt(),
      isRandom: json['isRandom'] as bool,
    );

Map<String, dynamic> _$QuizSessionToJson(QuizSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'subTopic': instance.subTopic,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'totalQuestions': instance.totalQuestions,
      'correctCount': instance.correctCount,
      'wrongCount': instance.wrongCount,
      'skippedCount': instance.skippedCount,
      'score': instance.score,
      'durationSeconds': instance.durationSeconds,
      'isRandom': instance.isRandom,
    };

_$QuizSessionImpl _$$QuizSessionImplFromJson(Map<String, dynamic> json) =>
    _$QuizSessionImpl(
      id: json['id'] as String,
      category: json['category'] as String,
      subTopic: json['subTopic'] as String?,
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      totalQuestions: (json['totalQuestions'] as num).toInt(),
      correctCount: (json['correctCount'] as num).toInt(),
      wrongCount: (json['wrongCount'] as num).toInt(),
      skippedCount: (json['skippedCount'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      durationSeconds: (json['durationSeconds'] as num).toInt(),
      isRandom: json['isRandom'] as bool,
    );

Map<String, dynamic> _$$QuizSessionImplToJson(_$QuizSessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'subTopic': instance.subTopic,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
      'totalQuestions': instance.totalQuestions,
      'correctCount': instance.correctCount,
      'wrongCount': instance.wrongCount,
      'skippedCount': instance.skippedCount,
      'score': instance.score,
      'durationSeconds': instance.durationSeconds,
      'isRandom': instance.isRandom,
    };
