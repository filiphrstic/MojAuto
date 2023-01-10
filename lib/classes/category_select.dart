import '../data/graphql/schema.generated.graphql.dart';

class CategorySelect {
  //e.g. Audi
  FindAllCategories$Query$Category filterItemCategory;
  //e.g. A3,A4,A5,...
  List<FindAllCategories$Query$Category> listDependableChildren = [];

  CategorySelect(this.filterItemCategory);
}
