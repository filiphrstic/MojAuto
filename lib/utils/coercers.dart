import 'dart:convert';
import 'package:decimal/decimal.dart';

List<DateTime> listDateTime = [];
List<Decimal> listDecimal = [];
List<String> listString = [];

DateTime fromGraphQLDateTimeToDartDateTime(String date) => DateTime.parse(date).toLocal();
String fromDartDateTimeToGraphQLDateTime(DateTime date) => date.toUtc().toIso8601String();
DateTime? fromGraphQLDateTimeNullableToDartDateTimeNullable(String? date) => date == null ? null : DateTime.parse(date).toLocal();
String? fromDartDateTimeNullableToGraphQLDateTimeNullable(DateTime? date) => date?.toUtc().toIso8601String();

List<DateTime>? fromGraphQLListNullableDateTimeToDartListNullableDateTime(List<String>? date) {
  date?.forEach((elementString) {
    final parsedElementString = DateTime.parse(elementString).toLocal();
    listDateTime.add(parsedElementString);
  });
  return listDateTime;
}

List<String>? fromDartListNullableDateTimeToGraphQLListNullableDateTime(List<DateTime>? date) {
  date?.forEach((elementDate) {
    final parsedElementDate = elementDate.toUtc().toIso8601String();
    listString.add(parsedElementDate);
  });
  return listString;
}

Decimal? fromGraphQLDecimalNullableToDartDecimalNullable(String? decimal) => decimal == null ? null : Decimal.parse(decimal);
String? fromDartDecimalNullableToGraphQLDecimalNullable(Decimal? decimal) => decimal?.toString();

List<Decimal>? fromGraphQLListNullableDecimalToDartListNullableDecimal(List<String>? listOfDecimals) {
  listOfDecimals?.forEach((elementString) {
    final parsedElementDecimal = Decimal.parse(elementString);
    listDecimal.add(parsedElementDecimal);
  });
  return listDecimal;
}

List<String>? fromDartListNullableDecimalToGraphQLListNullableDecimal(List<Decimal>? listOfDecimals) {
  listOfDecimals?.forEach((elementDecimal) {
    final parsedElementString = elementDecimal.toString();
    listString.add(parsedElementString);
  });
  return listString;
}

String fromGraphQLJsonToDartString(String json) => jsonDecode(json);
String fromDartStringToGraphQLJson(String json) => jsonEncode(json);
