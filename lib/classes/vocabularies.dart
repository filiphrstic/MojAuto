import '../utils/enums.dart';

class Vocabulary {
  final String? categoryCode;
  final InputType inputType;
  final String model;
  final String attribute;
  final DataType dataType;
  final List<dynamic>? options;

  const Vocabulary({
    this.categoryCode,
    required this.inputType,
    required this.model,
    required this.attribute,
    required this.dataType,
    this.options,
  });

  factory Vocabulary.fromJson(Map<String, dynamic> json) {
    InputType input;
    switch (json['inputType'] as String) {
      case "select":
        input = InputType.select;
        break;
      case "checkbox":
        input = InputType.checkbox;
        break;
      case "range":
        input = InputType.range;
        break;
      default:
        input = InputType.select;
        break;
    }

    DataType data;
    switch (json['dataType'] as String) {
      case "Category":
        data = DataType.category;
        break;
      case "int":
        data = DataType.int;
        break;
      case "DateTime":
        data = DataType.dateTime;
        break;
      case "boolean":
        data = DataType.boolean;
        break;
      default:
        data = DataType.category;
        break;
    }

    return Vocabulary(
      categoryCode: json['categoryCode'],
      inputType: input,
      model: json['model'] as String,
      attribute: json['attribute'] as String,
      dataType: data,
      options: json['options'],
    );
  }
}
