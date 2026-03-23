// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bookmark _$BookmarkFromJson(Map<String, dynamic> json) => Bookmark(
      questionId: (json['questionId'] as num).toInt(),
      savedAt: DateTime.parse(json['savedAt'] as String),
    );

Map<String, dynamic> _$BookmarkToJson(Bookmark instance) => <String, dynamic>{
      'questionId': instance.questionId,
      'savedAt': instance.savedAt.toIso8601String(),
    };

_$BookmarkImpl _$$BookmarkImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkImpl(
      questionId: (json['questionId'] as num).toInt(),
      savedAt: DateTime.parse(json['savedAt'] as String),
    );

Map<String, dynamic> _$$BookmarkImplToJson(_$BookmarkImpl instance) =>
    <String, dynamic>{
      'questionId': instance.questionId,
      'savedAt': instance.savedAt.toIso8601String(),
    };
