// ignore_for_file: file_names

import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../data/graphql/schema.generated.graphql.dart';

QueryResult findAllAdsWhere(dynamic jsonMap) {
  final QueryHookResult<Object?> filterAdsResult;

  filterAdsResult = useQuery(
    QueryOptions(
      document: FindAllAdsWhereQuery(variables: FindAllAdsWhereArguments()).document,
      variables: {"where": jsonMap},
      fetchPolicy: FetchPolicy.cacheFirst,
    ),
  );

  return filterAdsResult.result;
}
