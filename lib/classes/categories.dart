import '../data/graphql/schema.generated.dart';

class Categories {
  static List<FindAllCategories$Query$Category> categoriesList = [];

  void setCategoriesList(categories) {
    categoriesList = categories;
  }

  FindAllCategories$Query$Category? findCategoryById(String id) {
    for (var element in categoriesList) {
      if (element.categoryId == id) {
        return element;
      }
    }
    return null;
  }

  FindAllCategories$Query$Category? findCategoryByName(String name) {
    for (var element in categoriesList) {
      if (element.name == name) {
        return element;
      }
    }
    return null;
  }
}
