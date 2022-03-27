DateTime fromGraphQLDateTimeToDartDateTime(String date) =>
    DateTime.parse(date).toLocal();
String fromDartDateTimeToGraphQLDateTime(DateTime date) =>
    date.toUtc().toIso8601String();

DateTime? fromGraphQLDateTimeToDartDateTimeNullable(String? date) =>
    date == null ? null : DateTime.parse(date).toLocal();
String? fromDartDateTimeToGraphQLDateTimeNullable(DateTime? date) =>
    date?.toUtc().toIso8601String();

DateTime? fromGraphQLDateTimeNullableToDartDateTimeNullable(String? date) =>
    date == null ? null : DateTime.parse(date).toLocal();
String? fromDartDateTimeNullableToGraphQLDateTimeNullable(DateTime? date) =>
    date?.toUtc().toIso8601String();
