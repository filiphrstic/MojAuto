import '../data/graphql/schema.generated.graphql.dart';

//TO BE CHANGED AND SIMPLIFIED

/// A class used for passing arguments to the filter_result screen
class FilterArguments {
  int? bottomPrice;
  int? topPrice;
  String? orderBy;
  // bool saveSearchBool;
  dynamic adWhereInput;
  FindAllCategories$Query$Category? categoryBrand;
  FindAllCategories$Query$Category? categoryModel;
  FindAllCategories$Query$Category? categoryFuel;
  FindAllCategories$Query$Category? categoryVariant;
  FindAllCategories$Query$Category? categoryBodyType;
  FindAllCategories$Query$Category? categoryCondition;
  FindAllCategories$Query$Category? categoryTransmission;

  var listAllCategories = [];
  List<FindAllCategories$Query$Category> listChosenCategories = [];

  FilterArguments({
    // required this.saveSearchBool,
    this.adWhereInput,
    this.bottomPrice,
    this.topPrice,
    this.orderBy,
    brand,
    model,
    fuelType,
    variant,
    bodyType,
    condition,
    transmission,
  }) {
    categoryBrand = brand;
    categoryModel = model;
    categoryFuel = fuelType;
    categoryVariant = variant;
    categoryBodyType = bodyType;
    categoryCondition = condition;
    categoryTransmission = transmission;

    listAllCategories.addAll([
      brand,
      model,
      fuelType,
      variant,
      bodyType,
      condition,
      transmission,
    ]);

    for (var element in listAllCategories) {
      if (element != null) {
        listChosenCategories.add(element);
      }
    }
  }
}
