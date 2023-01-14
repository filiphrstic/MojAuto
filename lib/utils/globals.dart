library globals;

import 'package:flutter/material.dart';
import '../utils/enums.dart';
import '../data/graphql/schema.generated.graphql.dart';

bool favoritesFetched = false;
List<int> favoriteAdsIdsListGlobal = [];
ValueNotifier<List<AdWithAdAutoFragmentMixin>> compareAdsIdsListGlobal = ValueNotifier([]);
int? favoriteAdsListIdGlobal;
ValueNotifier<ViewType> selectedViewType = ValueNotifier(ViewType.list);

//ADD SERVER INFO HERE
const String imageSourceAddress = "path to images source";
const String productsUrl = "path to products source";
