import '../classes/category.dart';
import '../data/graphql/schema.generated.graphql.dart';

//e.g. Quick, Basic, Tech, Features with thier children of Category type
class MainCategories {
  FindAllCategories$Query$Category mainCategory;
  List<Category> mainCategoryChildren = [];

  MainCategories(this.mainCategory);

  void addChildren(Category child) {
    mainCategoryChildren.add(child);
  }
}
