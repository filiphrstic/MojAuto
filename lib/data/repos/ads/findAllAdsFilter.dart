// ignore_for_file: file_names

import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../data/graphql/schema.generated.graphql.dart';

QueryResult findAllAdsFilter(dynamic variablesMap) {
  final QueryHookResult<Object?> filterAdsResult;

  filterAdsResult = useQuery(
    QueryOptions(
      document: FindAllAdsFilterQuery(variables: FindAllAdsFilterArguments()).document,
      variables: variablesMap,
      fetchPolicy: FetchPolicy.cacheFirst,
    ),
  );

  final result = filterAdsResult.result;
  return result;
}
