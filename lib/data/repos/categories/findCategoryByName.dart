// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../data/graphql/schema.generated.graphql.dart';

QueryResult findCategoryByName(String name, BuildContext context) {
  final QueryHookResult<Object?> findCategoryByName;

  findCategoryByName = useQuery(
    QueryOptions(
      document: FindCategoryByNameQuery(variables: FindCategoryByNameArguments()).document,
      fetchPolicy: FetchPolicy.cacheFirst,
      variables: {"name": name},
    ),
  );

  final result = findCategoryByName.result;
  return result;
}
