// Generated: run flutter pub run build_runner build --delete-conflicting-outputs
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_session.freezed.dart';
part 'quiz_session.g.dart';

@freezed
class QuizSession with _$QuizSession {
  @JsonSerializable()
  const factory QuizSession({
    required String id, // uuid
    required String category,
    String? subTopic,
    required DateTime startTime,
    DateTime? endTime,
    required int totalQuestions,
    required int correctCount,
    required int wrongCount,
    required int skippedCount,
    required double score,
    required int durationSeconds,
    required bool isRandom,
  }) = _QuizSession;

  factory QuizSession.fromJson(Map<String, dynamic> json) => _$QuizSessionFromJson(json);
}
