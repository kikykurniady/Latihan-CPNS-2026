// Generated: run flutter pub run build_runner build --delete-conflicting-outputs
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
@JsonSerializable()
class Question with _$Question {
  const factory Question({
    required int id,
    required String category, // 'TWK' | 'TIU' | 'TKP'
    required String subTopic,
    required String question,
    required List<String> options, // 5 elements (A-E)
    required int correctAnswer, // index 0-4
    required String explanation,
    required String difficulty, // 'mudah' | 'sedang' | 'sulit'
    List<int>? tkpWeights, // null for TWK/TIU, [1,2,3,4,5] for TKP
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
