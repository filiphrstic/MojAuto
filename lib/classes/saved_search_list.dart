import '../classes/category.dart';
import '../data/graphql/schema.generated.dart';

class SavedSearchList {
  FindAllListsByListType$Query$List savedSearchList;
  // List<FindAllCategories$Query$Category?> savedSearchCategories;
  List<Category> savedSearchCategories;
  Map<String, dynamic> searchParamsForQuery;
  bool notificationToggle = false;

  SavedSearchList({required this.savedSearchList, required this.savedSearchCategories, required this.searchParamsForQuery});
}
