import '../../data/graphql/schema.generated.graphql.dart';

class Brand {
  final String name;
  final String iconUrl;
  final FindAllCategories$Query$Category? brandCategory;

  Brand(this.name, this.iconUrl, this.brandCategory);
}
