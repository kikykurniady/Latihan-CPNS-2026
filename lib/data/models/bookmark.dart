// Generated: run flutter pub run build_runner build --delete-conflicting-outputs
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookmark.freezed.dart';
part 'bookmark.g.dart';

@freezed
class Bookmark with _$Bookmark {
  @JsonSerializable()
  const factory Bookmark({
    required int questionId,
    required DateTime savedAt,
  }) = _Bookmark;

  factory Bookmark.fromJson(Map<String, dynamic> json) => _$BookmarkFromJson(json);
}
