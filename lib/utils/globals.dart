library globals;

import 'package:flutter/material.dart';
import '../utils/enums.dart';
import '../data/graphql/schema.generated.graphql.dart';

bool favoritesFetched = false;
List<int> favoriteAdsIdsListGlobal = [];
ValueNotifier<List<AdWithAdAutoFragmentMixin>> compareAdsIdsListGlobal = ValueNotifier([]);
int? favoriteAdsListIdGlobal;
ValueNotifier<ViewType> selectedViewType = ValueNotifier(ViewType.list);

const String imageSourceAddress = "https://autofox-v.azureedge.net/ad-files/";
const String productsUrl = "https://web.autofox.iddqd.hr/products/";
