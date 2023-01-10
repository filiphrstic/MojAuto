import '../data/graphql/schema.generated.graphql.dart';

/// A class used for passing arguments to the ad details screen
class AdDetailsArguments {
  final String adId;
  final AdWithAdAutoFragmentMixin? ad;
  final List<FindAllCategories$Query$Category> categories;

  AdDetailsArguments(
    this.adId,
    this.ad,
    this.categories,
  );
}
