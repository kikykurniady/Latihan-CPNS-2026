import 'dart:convert';
import 'package:drift/drift.dart';

// Untuk kolom 'options' (List<String>)
class ListStringConverter extends TypeConverter<List<String>, String> {
  const ListStringConverter();

  @override
  List<String> fromSql(String fromDb) {
    return (json.decode(fromDb) as List).cast<String>();
  }

  @override
  String toSql(List<String> value) {
    return json.encode(value);
  }
}

// Untuk kolom 'tkpWeights' yang nullable (List<int>?)
class NullableListIntConverter extends TypeConverter<List<int>?, String> {
  const NullableListIntConverter();

  @override
  List<int>? fromSql(String? fromDb) {
    if (fromDb == null) {
      return null;
    }
    return (json.decode(fromDb) as List).cast<int>();
  }

  @override
  String? toSql(List<int>? value) {
    if (value == null) {
      return null;
    }
    return json.encode(value);
  }
}
