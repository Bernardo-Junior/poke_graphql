DateTime fromGraphQLDateTimeToDartDateTime(String value) {
  return DateTime.parse(value);
}

String fromDartDateTimeToGraphQLDateTime(DateTime value) {
  return value.toIso8601String();
}
