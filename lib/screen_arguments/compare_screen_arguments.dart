import '../data/graphql/schema.generated.graphql.dart';

/// A class used for passing arguments to the compare screen
class CompareScreenArguments {
  final List<AdWithAdAutoFragmentMixin> ads;
  final List<FindAllCategories$Query$Category> categories;

  CompareScreenArguments(
    this.ads,
    this.categories,
  );
}
