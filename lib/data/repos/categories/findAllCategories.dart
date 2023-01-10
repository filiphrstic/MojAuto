// ignore_for_file: file_names
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../data/graphql/schema.generated.graphql.dart';

QueryResult findAllCategories() {
  final QueryHookResult<Object?> filterCategoriesResult;

  filterCategoriesResult = useQuery(
    QueryOptions(
      document: FindAllCategoriesQuery().document,
      fetchPolicy: FetchPolicy.cacheFirst,
    ),
  );

  final result = filterCategoriesResult.result;
  return result;
}
