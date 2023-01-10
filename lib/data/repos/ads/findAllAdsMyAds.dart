// ignore_for_file: file_names

import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../data/graphql/schema.generated.graphql.dart';

QueryResult findAllAdsMyAds(dynamic userSub, bool isSold) {
  final QueryHookResult<Object?> filterAdsResult;

  filterAdsResult = useQuery(
    QueryOptions(
      document: FindAllAdsMyAdsQuery(variables: FindAllAdsMyAdsArguments()).document,
      variables: {"userSub": userSub, "isSold": isSold},
      fetchPolicy: FetchPolicy.cacheFirst,
    ),
  );

  return filterAdsResult.result;
}
