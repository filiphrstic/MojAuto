//Creates a new Saved Search list
// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../data/graphql/schema.generated.graphql.dart';

MutationHookResult<Object?> createNewList(BuildContext context) {
  final MutationHookResult<Object?> createList;
  createList = useMutation(
    MutationOptions(
      document: CreateListMutation(
          variables: CreateListArguments(
        title: "",
        search_params: "",
      )).document,
    ),
  );

  return createList;
}
