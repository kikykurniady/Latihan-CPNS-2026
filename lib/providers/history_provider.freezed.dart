// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryStats {
  int get totalSessions => throw _privateConstructorUsedError;
  double get averageScore => throw _privateConstructorUsedError;
  double get highestScore => throw _privateConstructorUsedError;
  double get lowestScore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStatsCopyWith<HistoryStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStatsCopyWith<$Res> {
  factory $HistoryStatsCopyWith(
          HistoryStats value, $Res Function(HistoryStats) then) =
      _$HistoryStatsCopyWithImpl<$Res, HistoryStats>;
  @useResult
  $Res call(
      {int totalSessions,
      double averageScore,
      double highestScore,
      double lowestScore});
}

/// @nodoc
class _$HistoryStatsCopyWithImpl<$Res, $Val extends HistoryStats>
    implements $HistoryStatsCopyWith<$Res> {
  _$HistoryStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSessions = null,
    Object? averageScore = null,
    Object? highestScore = null,
    Object? lowestScore = null,
  }) {
    return _then(_value.copyWith(
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
      highestScore: null == highestScore
          ? _value.highestScore
          : highestScore // ignore: cast_nullable_to_non_nullable
              as double,
      lowestScore: null == lowestScore
          ? _value.lowestScore
          : lowestScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryStatsImplCopyWith<$Res>
    implements $HistoryStatsCopyWith<$Res> {
  factory _$$HistoryStatsImplCopyWith(
          _$HistoryStatsImpl value, $Res Function(_$HistoryStatsImpl) then) =
      __$$HistoryStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalSessions,
      double averageScore,
      double highestScore,
      double lowestScore});
}

/// @nodoc
class __$$HistoryStatsImplCopyWithImpl<$Res>
    extends _$HistoryStatsCopyWithImpl<$Res, _$HistoryStatsImpl>
    implements _$$HistoryStatsImplCopyWith<$Res> {
  __$$HistoryStatsImplCopyWithImpl(
      _$HistoryStatsImpl _value, $Res Function(_$HistoryStatsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalSessions = null,
    Object? averageScore = null,
    Object? highestScore = null,
    Object? lowestScore = null,
  }) {
    return _then(_$HistoryStatsImpl(
      totalSessions: null == totalSessions
          ? _value.totalSessions
          : totalSessions // ignore: cast_nullable_to_non_nullable
              as int,
      averageScore: null == averageScore
          ? _value.averageScore
          : averageScore // ignore: cast_nullable_to_non_nullable
              as double,
      highestScore: null == highestScore
          ? _value.highestScore
          : highestScore // ignore: cast_nullable_to_non_nullable
              as double,
      lowestScore: null == lowestScore
          ? _value.lowestScore
          : lowestScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$HistoryStatsImpl implements _HistoryStats {
  const _$HistoryStatsImpl(
      {required this.totalSessions,
      required this.averageScore,
      required this.highestScore,
      required this.lowestScore});

  @override
  final int totalSessions;
  @override
  final double averageScore;
  @override
  final double highestScore;
  @override
  final double lowestScore;

  @override
  String toString() {
    return 'HistoryStats(totalSessions: $totalSessions, averageScore: $averageScore, highestScore: $highestScore, lowestScore: $lowestScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStatsImpl &&
            (identical(other.totalSessions, totalSessions) ||
                other.totalSessions == totalSessions) &&
            (identical(other.averageScore, averageScore) ||
                other.averageScore == averageScore) &&
            (identical(other.highestScore, highestScore) ||
                other.highestScore == highestScore) &&
            (identical(other.lowestScore, lowestScore) ||
                other.lowestScore == lowestScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, totalSessions, averageScore, highestScore, lowestScore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStatsImplCopyWith<_$HistoryStatsImpl> get copyWith =>
      __$$HistoryStatsImplCopyWithImpl<_$HistoryStatsImpl>(this, _$identity);
}

abstract class _HistoryStats implements HistoryStats {
  const factory _HistoryStats(
      {required final int totalSessions,
      required final double averageScore,
      required final double highestScore,
      required final double lowestScore}) = _$HistoryStatsImpl;

  @override
  int get totalSessions;
  @override
  double get averageScore;
  @override
  double get highestScore;
  @override
  double get lowestScore;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStatsImplCopyWith<_$HistoryStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  List<QuizSession> get sessions => throw _privateConstructorUsedError;
  List<QuizSession> get filteredSessions => throw _privateConstructorUsedError;
  HistoryStats get stats => throw _privateConstructorUsedError;
  String? get selectedCategory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call(
      {List<QuizSession> sessions,
      List<QuizSession> filteredSessions,
      HistoryStats stats,
      String? selectedCategory});

  $HistoryStatsCopyWith<$Res> get stats;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
    Object? filteredSessions = null,
    Object? stats = null,
    Object? selectedCategory = freezed,
  }) {
    return _then(_value.copyWith(
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<QuizSession>,
      filteredSessions: null == filteredSessions
          ? _value.filteredSessions
          : filteredSessions // ignore: cast_nullable_to_non_nullable
              as List<QuizSession>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as HistoryStats,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HistoryStatsCopyWith<$Res> get stats {
    return $HistoryStatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HistoryStateImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryStateImplCopyWith(
          _$HistoryStateImpl value, $Res Function(_$HistoryStateImpl) then) =
      __$$HistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<QuizSession> sessions,
      List<QuizSession> filteredSessions,
      HistoryStats stats,
      String? selectedCategory});

  @override
  $HistoryStatsCopyWith<$Res> get stats;
}

/// @nodoc
class __$$HistoryStateImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryStateImpl>
    implements _$$HistoryStateImplCopyWith<$Res> {
  __$$HistoryStateImplCopyWithImpl(
      _$HistoryStateImpl _value, $Res Function(_$HistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessions = null,
    Object? filteredSessions = null,
    Object? stats = null,
    Object? selectedCategory = freezed,
  }) {
    return _then(_$HistoryStateImpl(
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<QuizSession>,
      filteredSessions: null == filteredSessions
          ? _value._filteredSessions
          : filteredSessions // ignore: cast_nullable_to_non_nullable
              as List<QuizSession>,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as HistoryStats,
      selectedCategory: freezed == selectedCategory
          ? _value.selectedCategory
          : selectedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$HistoryStateImpl implements _HistoryState {
  const _$HistoryStateImpl(
      {required final List<QuizSession> sessions,
      required final List<QuizSession> filteredSessions,
      required this.stats,
      this.selectedCategory})
      : _sessions = sessions,
        _filteredSessions = filteredSessions;

  final List<QuizSession> _sessions;
  @override
  List<QuizSession> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  final List<QuizSession> _filteredSessions;
  @override
  List<QuizSession> get filteredSessions {
    if (_filteredSessions is EqualUnmodifiableListView)
      return _filteredSessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredSessions);
  }

  @override
  final HistoryStats stats;
  @override
  final String? selectedCategory;

  @override
  String toString() {
    return 'HistoryState(sessions: $sessions, filteredSessions: $filteredSessions, stats: $stats, selectedCategory: $selectedCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryStateImpl &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            const DeepCollectionEquality()
                .equals(other._filteredSessions, _filteredSessions) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            (identical(other.selectedCategory, selectedCategory) ||
                other.selectedCategory == selectedCategory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sessions),
      const DeepCollectionEquality().hash(_filteredSessions),
      stats,
      selectedCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryStateImplCopyWith<_$HistoryStateImpl> get copyWith =>
      __$$HistoryStateImplCopyWithImpl<_$HistoryStateImpl>(this, _$identity);
}

abstract class _HistoryState implements HistoryState {
  const factory _HistoryState(
      {required final List<QuizSession> sessions,
      required final List<QuizSession> filteredSessions,
      required final HistoryStats stats,
      final String? selectedCategory}) = _$HistoryStateImpl;

  @override
  List<QuizSession> get sessions;
  @override
  List<QuizSession> get filteredSessions;
  @override
  HistoryStats get stats;
  @override
  String? get selectedCategory;
  @override
  @JsonKey(ignore: true)
  _$$HistoryStateImplCopyWith<_$HistoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
