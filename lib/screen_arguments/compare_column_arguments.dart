import '../data/graphql/schema.generated.graphql.dart';

/// A class used for passing arguments to the compare column (single ad)
class CompareColumnArguments {
  final AdWithAdAutoFragmentMixin ad;
  final List<FindAllCategories$Query$Category> categories;
  final String vehicleAttributeCategoryName;

  CompareColumnArguments(
    this.ad,
    this.categories,
    this.vehicleAttributeCategoryName,
  );
}
