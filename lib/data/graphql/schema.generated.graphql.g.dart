// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'schema.generated.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateNewAd$Mutation$Ad$AdAuto _$CreateNewAd$Mutation$Ad$AdAutoFromJson(
        Map<String, dynamic> json) =>
    CreateNewAd$Mutation$Ad$AdAuto()
      ..conditionTypeCid = json['condition_type_cid'] as int?
      ..vehicleTypeCid = json['vehicle_type_cid'] as int?
      ..fuelTypeCid = json['fuel_type_cid'] as int?
      ..transmissionTypeCid = json['transmission_type_cid'] as int?
      ..makeCid = json['make_cid'] as int?
      ..modelCid = json['model_cid'] as int?
      ..year = json['year'] as int
      ..km = json['km'] as int?
      ..powerKw = json['power_kw'] as int?;

Map<String, dynamic> _$CreateNewAd$Mutation$Ad$AdAutoToJson(
        CreateNewAd$Mutation$Ad$AdAuto instance) =>
    <String, dynamic>{
      'condition_type_cid': instance.conditionTypeCid,
      'vehicle_type_cid': instance.vehicleTypeCid,
      'fuel_type_cid': instance.fuelTypeCid,
      'transmission_type_cid': instance.transmissionTypeCid,
      'make_cid': instance.makeCid,
      'model_cid': instance.modelCid,
      'year': instance.year,
      'km': instance.km,
      'power_kw': instance.powerKw,
    };

CreateNewAd$Mutation$Ad$File _$CreateNewAd$Mutation$Ad$FileFromJson(
        Map<String, dynamic> json) =>
    CreateNewAd$Mutation$Ad$File()
      ..fileId = json['file_id'] as String
      ..filename = json['filename'] as String
      ..filesize = json['filesize'] as int
      ..code = json['code'] as String
      ..path = json['path'] as String;

Map<String, dynamic> _$CreateNewAd$Mutation$Ad$FileToJson(
        CreateNewAd$Mutation$Ad$File instance) =>
    <String, dynamic>{
      'file_id': instance.fileId,
      'filename': instance.filename,
      'filesize': instance.filesize,
      'code': instance.code,
      'path': instance.path,
    };

CreateNewAd$Mutation$Ad _$CreateNewAd$Mutation$AdFromJson(
        Map<String, dynamic> json) =>
    CreateNewAd$Mutation$Ad()
      ..adId = json['ad_id'] as String
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['created_at'] as String)
      ..updatedAt =
          fromGraphQLDateTimeToDartDateTime(json['updated_at'] as String)
      ..deletedAt = fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['deleted_at'] as String?)
      ..title = json['title'] as String
      ..text = json['text'] as String
      ..coordsLatitude = (json['coords_latitude'] as num?)?.toDouble()
      ..coordsLongitude = (json['coords_longitude'] as num?)?.toDouble()
      ..coordsRadius = json['coords_radius'] as int?
      ..address = json['address'] as String?
      ..priceEurocent = json['price_eurocent'] as int?
      ..adAuto = json['ad_auto'] == null
          ? null
          : CreateNewAd$Mutation$Ad$AdAuto.fromJson(
              json['ad_auto'] as Map<String, dynamic>)
      ..files = (json['files'] as List<dynamic>?)
          ?.map((e) =>
              CreateNewAd$Mutation$Ad$File.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$CreateNewAd$Mutation$AdToJson(
        CreateNewAd$Mutation$Ad instance) =>
    <String, dynamic>{
      'ad_id': instance.adId,
      'created_at': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updated_at': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'deleted_at':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.deletedAt),
      'title': instance.title,
      'text': instance.text,
      'coords_latitude': instance.coordsLatitude,
      'coords_longitude': instance.coordsLongitude,
      'coords_radius': instance.coordsRadius,
      'address': instance.address,
      'price_eurocent': instance.priceEurocent,
      'ad_auto': instance.adAuto?.toJson(),
      'files': instance.files?.map((e) => e.toJson()).toList(),
    };

CreateNewAd$Mutation _$CreateNewAd$MutationFromJson(
        Map<String, dynamic> json) =>
    CreateNewAd$Mutation()
      ..createAd = CreateNewAd$Mutation$Ad.fromJson(
          json['createAd'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateNewAd$MutationToJson(
        CreateNewAd$Mutation instance) =>
    <String, dynamic>{
      'createAd': instance.createAd.toJson(),
    };

FindAllAds$Query$Ad _$FindAllAds$Query$AdFromJson(Map<String, dynamic> json) =>
    FindAllAds$Query$Ad()
      ..$$typename = json['__typename'] as String?
      ..adId = json['ad_id'] as String
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['created_at'] as String)
      ..updatedAt =
          fromGraphQLDateTimeToDartDateTime(json['updated_at'] as String)
      ..deletedAt = fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['deleted_at'] as String?)
      ..title = json['title'] as String
      ..text = json['text'] as String
      ..coordsLatitude = (json['coords_latitude'] as num?)?.toDouble()
      ..coordsLongitude = (json['coords_longitude'] as num?)?.toDouble()
      ..coordsRadius = json['coords_radius'] as int?
      ..address = json['address'] as String?
      ..priceEurocent = json['price_eurocent'] as int?
      ..priceRating = fromGraphQLDecimalNullableToDartDecimalNullable(
          json['price_rating'] as String?)
      ..files = (json['files'] as List<dynamic>?)
          ?.map((e) => AdWithAdAutoFragmentMixin$File.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..adAuto = json['ad_auto'] == null
          ? null
          : AdWithAdAutoFragmentMixin$AdAuto.fromJson(
              json['ad_auto'] as Map<String, dynamic>);

Map<String, dynamic> _$FindAllAds$Query$AdToJson(
        FindAllAds$Query$Ad instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'ad_id': instance.adId,
      'created_at': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updated_at': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'deleted_at':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.deletedAt),
      'title': instance.title,
      'text': instance.text,
      'coords_latitude': instance.coordsLatitude,
      'coords_longitude': instance.coordsLongitude,
      'coords_radius': instance.coordsRadius,
      'address': instance.address,
      'price_eurocent': instance.priceEurocent,
      'price_rating':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.priceRating),
      'files': instance.files?.map((e) => e.toJson()).toList(),
      'ad_auto': instance.adAuto?.toJson(),
    };

FindAllAds$Query _$FindAllAds$QueryFromJson(Map<String, dynamic> json) =>
    FindAllAds$Query()
      ..findAllAds = (json['findAllAds'] as List<dynamic>)
          .map((e) => FindAllAds$Query$Ad.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindAllAds$QueryToJson(FindAllAds$Query instance) =>
    <String, dynamic>{
      'findAllAds': instance.findAllAds.map((e) => e.toJson()).toList(),
    };

AdWithAdAutoFragmentMixin$File _$AdWithAdAutoFragmentMixin$FileFromJson(
        Map<String, dynamic> json) =>
    AdWithAdAutoFragmentMixin$File()..path = json['path'] as String;

Map<String, dynamic> _$AdWithAdAutoFragmentMixin$FileToJson(
        AdWithAdAutoFragmentMixin$File instance) =>
    <String, dynamic>{
      'path': instance.path,
    };

AdWithAdAutoFragmentMixin$AdAuto _$AdWithAdAutoFragmentMixin$AdAutoFromJson(
        Map<String, dynamic> json) =>
    AdWithAdAutoFragmentMixin$AdAuto()
      ..$$typename = json['__typename'] as String?
      ..conditionTypeCid = json['condition_type_cid'] as int?
      ..vehicleTypeCid = json['vehicle_type_cid'] as int?
      ..fuelTypeCid = json['fuel_type_cid'] as int?
      ..transmissionTypeCid = json['transmission_type_cid'] as int?
      ..makeCid = json['make_cid'] as int?
      ..modelCid = json['model_cid'] as int?
      ..year = json['year'] as int
      ..km = json['km'] as int?
      ..powerKw = json['power_kw'] as int?
      ..bodyTypeCid = json['body_type_cid'] as int?
      ..variantCid = json['variant_cid'] as int?
      ..registeredUntil = fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['registered_until'] as String?)
      ..doorsNum = json['doors_num'] as int?
      ..seatsNum = json['seats_num'] as int?
      ..isFirstOwner = json['is_first_owner'] as bool?
      ..isServiceBookAvailable = json['is_service_book_available'] as bool?
      ..isVehicleGaraged = json['is_vehicle_garaged'] as bool?
      ..engineDisplacementCm3 = json['engine_displacement_cm3'] as int?
      ..emissionClassCid = json['emission_class_cid'] as int?
      ..batteryCapacityKwh = json['battery_capacity_kwh'] as int?
      ..conditioningCid = json['conditioning_cid'] as int?
      ..colorExteriorCid = json['color_exterior_cid'] as int?
      ..colorInteriorCid = json['color_interior_cid'] as int?;

Map<String, dynamic> _$AdWithAdAutoFragmentMixin$AdAutoToJson(
        AdWithAdAutoFragmentMixin$AdAuto instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'condition_type_cid': instance.conditionTypeCid,
      'vehicle_type_cid': instance.vehicleTypeCid,
      'fuel_type_cid': instance.fuelTypeCid,
      'transmission_type_cid': instance.transmissionTypeCid,
      'make_cid': instance.makeCid,
      'model_cid': instance.modelCid,
      'year': instance.year,
      'km': instance.km,
      'power_kw': instance.powerKw,
      'body_type_cid': instance.bodyTypeCid,
      'variant_cid': instance.variantCid,
      'registered_until': fromDartDateTimeNullableToGraphQLDateTimeNullable(
          instance.registeredUntil),
      'doors_num': instance.doorsNum,
      'seats_num': instance.seatsNum,
      'is_first_owner': instance.isFirstOwner,
      'is_service_book_available': instance.isServiceBookAvailable,
      'is_vehicle_garaged': instance.isVehicleGaraged,
      'engine_displacement_cm3': instance.engineDisplacementCm3,
      'emission_class_cid': instance.emissionClassCid,
      'battery_capacity_kwh': instance.batteryCapacityKwh,
      'conditioning_cid': instance.conditioningCid,
      'color_exterior_cid': instance.colorExteriorCid,
      'color_interior_cid': instance.colorInteriorCid,
    };

FindAllAdsFilter$Query$Ad _$FindAllAdsFilter$Query$AdFromJson(
        Map<String, dynamic> json) =>
    FindAllAdsFilter$Query$Ad()
      ..$$typename = json['__typename'] as String?
      ..adId = json['ad_id'] as String
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['created_at'] as String)
      ..updatedAt =
          fromGraphQLDateTimeToDartDateTime(json['updated_at'] as String)
      ..deletedAt = fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['deleted_at'] as String?)
      ..title = json['title'] as String
      ..text = json['text'] as String
      ..coordsLatitude = (json['coords_latitude'] as num?)?.toDouble()
      ..coordsLongitude = (json['coords_longitude'] as num?)?.toDouble()
      ..coordsRadius = json['coords_radius'] as int?
      ..address = json['address'] as String?
      ..priceEurocent = json['price_eurocent'] as int?
      ..priceRating = fromGraphQLDecimalNullableToDartDecimalNullable(
          json['price_rating'] as String?)
      ..files = (json['files'] as List<dynamic>?)
          ?.map((e) => AdWithAdAutoFragmentMixin$File.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..adAuto = json['ad_auto'] == null
          ? null
          : AdWithAdAutoFragmentMixin$AdAuto.fromJson(
              json['ad_auto'] as Map<String, dynamic>);

Map<String, dynamic> _$FindAllAdsFilter$Query$AdToJson(
        FindAllAdsFilter$Query$Ad instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'ad_id': instance.adId,
      'created_at': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updated_at': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'deleted_at':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.deletedAt),
      'title': instance.title,
      'text': instance.text,
      'coords_latitude': instance.coordsLatitude,
      'coords_longitude': instance.coordsLongitude,
      'coords_radius': instance.coordsRadius,
      'address': instance.address,
      'price_eurocent': instance.priceEurocent,
      'price_rating':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.priceRating),
      'files': instance.files?.map((e) => e.toJson()).toList(),
      'ad_auto': instance.adAuto?.toJson(),
    };

FindAllAdsFilter$Query _$FindAllAdsFilter$QueryFromJson(
        Map<String, dynamic> json) =>
    FindAllAdsFilter$Query()
      ..findAllAds = (json['findAllAds'] as List<dynamic>)
          .map((e) =>
              FindAllAdsFilter$Query$Ad.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindAllAdsFilter$QueryToJson(
        FindAllAdsFilter$Query instance) =>
    <String, dynamic>{
      'findAllAds': instance.findAllAds.map((e) => e.toJson()).toList(),
    };

AdOrderByWithRelationInput _$AdOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    AdOrderByWithRelationInput(
      adId: $enumDecodeNullable(_$SortOrderEnumMap, json['ad_id'],
          unknownValue: SortOrder.artemisUnknown),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at'],
          unknownValue: SortOrder.artemisUnknown),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at'],
          unknownValue: SortOrder.artemisUnknown),
      deletedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleted_at'],
          unknownValue: SortOrder.artemisUnknown),
      title: $enumDecodeNullable(_$SortOrderEnumMap, json['title'],
          unknownValue: SortOrder.artemisUnknown),
      text: $enumDecodeNullable(_$SortOrderEnumMap, json['text'],
          unknownValue: SortOrder.artemisUnknown),
      coordsLatitude: $enumDecodeNullable(
          _$SortOrderEnumMap, json['coords_latitude'],
          unknownValue: SortOrder.artemisUnknown),
      coordsLongitude: $enumDecodeNullable(
          _$SortOrderEnumMap, json['coords_longitude'],
          unknownValue: SortOrder.artemisUnknown),
      coordsRadius: $enumDecodeNullable(
          _$SortOrderEnumMap, json['coords_radius'],
          unknownValue: SortOrder.artemisUnknown),
      address: $enumDecodeNullable(_$SortOrderEnumMap, json['address'],
          unknownValue: SortOrder.artemisUnknown),
      priceEurocent: $enumDecodeNullable(
          _$SortOrderEnumMap, json['price_eurocent'],
          unknownValue: SortOrder.artemisUnknown),
      userSub: $enumDecodeNullable(_$SortOrderEnumMap, json['user_sub'],
          unknownValue: SortOrder.artemisUnknown),
      user: json['user'] == null
          ? null
          : UserOrderByWithRelationInput.fromJson(
              json['user'] as Map<String, dynamic>),
      adCategories: json['ad_categories'] == null
          ? null
          : AdCategoryOrderByRelationAggregateInput.fromJson(
              json['ad_categories'] as Map<String, dynamic>),
      adAuto: json['ad_auto'] == null
          ? null
          : AdAutoOrderByWithRelationInput.fromJson(
              json['ad_auto'] as Map<String, dynamic>),
      adHouse: json['ad_house'] == null
          ? null
          : AdHouseOrderByWithRelationInput.fromJson(
              json['ad_house'] as Map<String, dynamic>),
      files: json['files'] == null
          ? null
          : FileOrderByRelationAggregateInput.fromJson(
              json['files'] as Map<String, dynamic>),
      listAd: json['ListAd'] == null
          ? null
          : ListAdOrderByRelationAggregateInput.fromJson(
              json['ListAd'] as Map<String, dynamic>),
      isSold: $enumDecodeNullable(_$SortOrderEnumMap, json['is_sold'],
          unknownValue: SortOrder.artemisUnknown),
      priceRating: $enumDecodeNullable(_$SortOrderEnumMap, json['price_rating'],
          unknownValue: SortOrder.artemisUnknown),
      adPromotion: json['AdPromotion'] == null
          ? null
          : AdPromotionOrderByRelationAggregateInput.fromJson(
              json['AdPromotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdOrderByWithRelationInputToJson(
        AdOrderByWithRelationInput instance) =>
    <String, dynamic>{
      'ad_id': _$SortOrderEnumMap[instance.adId],
      'created_at': _$SortOrderEnumMap[instance.createdAt],
      'updated_at': _$SortOrderEnumMap[instance.updatedAt],
      'deleted_at': _$SortOrderEnumMap[instance.deletedAt],
      'title': _$SortOrderEnumMap[instance.title],
      'text': _$SortOrderEnumMap[instance.text],
      'coords_latitude': _$SortOrderEnumMap[instance.coordsLatitude],
      'coords_longitude': _$SortOrderEnumMap[instance.coordsLongitude],
      'coords_radius': _$SortOrderEnumMap[instance.coordsRadius],
      'address': _$SortOrderEnumMap[instance.address],
      'price_eurocent': _$SortOrderEnumMap[instance.priceEurocent],
      'user_sub': _$SortOrderEnumMap[instance.userSub],
      'user': instance.user?.toJson(),
      'ad_categories': instance.adCategories?.toJson(),
      'ad_auto': instance.adAuto?.toJson(),
      'ad_house': instance.adHouse?.toJson(),
      'files': instance.files?.toJson(),
      'ListAd': instance.listAd?.toJson(),
      'is_sold': _$SortOrderEnumMap[instance.isSold],
      'price_rating': _$SortOrderEnumMap[instance.priceRating],
      'AdPromotion': instance.adPromotion?.toJson(),
    };

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
  SortOrder.artemisUnknown: 'ARTEMIS_UNKNOWN',
};

UserOrderByWithRelationInput _$UserOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithRelationInput(
      userSub: $enumDecodeNullable(_$SortOrderEnumMap, json['user_sub'],
          unknownValue: SortOrder.artemisUnknown),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name'],
          unknownValue: SortOrder.artemisUnknown),
      ads: json['ads'] == null
          ? null
          : AdOrderByRelationAggregateInput.fromJson(
              json['ads'] as Map<String, dynamic>),
      files: json['files'] == null
          ? null
          : FileOrderByRelationAggregateInput.fromJson(
              json['files'] as Map<String, dynamic>),
      lists: json['lists'] == null
          ? null
          : ListOrderByRelationAggregateInput.fromJson(
              json['lists'] as Map<String, dynamic>),
      blogs: json['blogs'] == null
          ? null
          : BlogOrderByRelationAggregateInput.fromJson(
              json['blogs'] as Map<String, dynamic>),
      userPromotion: json['UserPromotion'] == null
          ? null
          : UserPromotionOrderByRelationAggregateInput.fromJson(
              json['UserPromotion'] as Map<String, dynamic>),
      adPromotion: json['AdPromotion'] == null
          ? null
          : AdPromotionOrderByRelationAggregateInput.fromJson(
              json['AdPromotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithRelationInputToJson(
        UserOrderByWithRelationInput instance) =>
    <String, dynamic>{
      'user_sub': _$SortOrderEnumMap[instance.userSub],
      'name': _$SortOrderEnumMap[instance.name],
      'ads': instance.ads?.toJson(),
      'files': instance.files?.toJson(),
      'lists': instance.lists?.toJson(),
      'blogs': instance.blogs?.toJson(),
      'UserPromotion': instance.userPromotion?.toJson(),
      'AdPromotion': instance.adPromotion?.toJson(),
    };

AdOrderByRelationAggregateInput _$AdOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    AdOrderByRelationAggregateInput(
      $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
          unknownValue: SortOrder.artemisUnknown),
    );

Map<String, dynamic> _$AdOrderByRelationAggregateInputToJson(
        AdOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

FileOrderByRelationAggregateInput _$FileOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    FileOrderByRelationAggregateInput(
      $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
          unknownValue: SortOrder.artemisUnknown),
    );

Map<String, dynamic> _$FileOrderByRelationAggregateInputToJson(
        FileOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

ListOrderByRelationAggregateInput _$ListOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    ListOrderByRelationAggregateInput(
      $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
          unknownValue: SortOrder.artemisUnknown),
    );

Map<String, dynamic> _$ListOrderByRelationAggregateInputToJson(
        ListOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

BlogOrderByRelationAggregateInput _$BlogOrderByRelationAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BlogOrderByRelationAggregateInput(
      $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
          unknownValue: SortOrder.artemisUnknown),
    );

Map<String, dynamic> _$BlogOrderByRelationAggregateInputToJson(
        BlogOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

UserPromotionOrderByRelationAggregateInput
    _$UserPromotionOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        UserPromotionOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
              unknownValue: SortOrder.artemisUnknown),
        );

Map<String, dynamic> _$UserPromotionOrderByRelationAggregateInputToJson(
        UserPromotionOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

AdPromotionOrderByRelationAggregateInput
    _$AdPromotionOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AdPromotionOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
              unknownValue: SortOrder.artemisUnknown),
        );

Map<String, dynamic> _$AdPromotionOrderByRelationAggregateInputToJson(
        AdPromotionOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

AdCategoryOrderByRelationAggregateInput
    _$AdCategoryOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        AdCategoryOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
              unknownValue: SortOrder.artemisUnknown),
        );

Map<String, dynamic> _$AdCategoryOrderByRelationAggregateInputToJson(
        AdCategoryOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

AdAutoOrderByWithRelationInput _$AdAutoOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    AdAutoOrderByWithRelationInput(
      adAutoId: $enumDecodeNullable(_$SortOrderEnumMap, json['ad_auto_id'],
          unknownValue: SortOrder.artemisUnknown),
      adId: $enumDecodeNullable(_$SortOrderEnumMap, json['ad_id'],
          unknownValue: SortOrder.artemisUnknown),
      ad: json['ad'] == null
          ? null
          : AdOrderByWithRelationInput.fromJson(
              json['ad'] as Map<String, dynamic>),
      conditionTypeCid: $enumDecodeNullable(
          _$SortOrderEnumMap, json['condition_type_cid'],
          unknownValue: SortOrder.artemisUnknown),
      conditionType: json['condition_type'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['condition_type'] as Map<String, dynamic>),
      vehicleTypeCid: $enumDecodeNullable(
          _$SortOrderEnumMap, json['vehicle_type_cid'],
          unknownValue: SortOrder.artemisUnknown),
      vehicleType: json['vehicle_type'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['vehicle_type'] as Map<String, dynamic>),
      fuelTypeCid: $enumDecodeNullable(
          _$SortOrderEnumMap, json['fuel_type_cid'],
          unknownValue: SortOrder.artemisUnknown),
      fuelType: json['fuel_type'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['fuel_type'] as Map<String, dynamic>),
      transmissionTypeCid: $enumDecodeNullable(
          _$SortOrderEnumMap, json['transmission_type_cid'],
          unknownValue: SortOrder.artemisUnknown),
      transmissionType: json['transmission_type'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['transmission_type'] as Map<String, dynamic>),
      makeCid: $enumDecodeNullable(_$SortOrderEnumMap, json['make_cid'],
          unknownValue: SortOrder.artemisUnknown),
      make: json['make'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['make'] as Map<String, dynamic>),
      modelCid: $enumDecodeNullable(_$SortOrderEnumMap, json['model_cid'],
          unknownValue: SortOrder.artemisUnknown),
      model: json['model'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['model'] as Map<String, dynamic>),
      year: $enumDecodeNullable(_$SortOrderEnumMap, json['year'],
          unknownValue: SortOrder.artemisUnknown),
      km: $enumDecodeNullable(_$SortOrderEnumMap, json['km'],
          unknownValue: SortOrder.artemisUnknown),
      powerKw: $enumDecodeNullable(_$SortOrderEnumMap, json['power_kw'],
          unknownValue: SortOrder.artemisUnknown),
      bodyTypeCid: $enumDecodeNullable(
          _$SortOrderEnumMap, json['body_type_cid'],
          unknownValue: SortOrder.artemisUnknown),
      bodyType: json['body_type'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['body_type'] as Map<String, dynamic>),
      variantCid: $enumDecodeNullable(_$SortOrderEnumMap, json['variant_cid'],
          unknownValue: SortOrder.artemisUnknown),
      variant: json['variant'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['variant'] as Map<String, dynamic>),
      registeredUntil: $enumDecodeNullable(
          _$SortOrderEnumMap, json['registered_until'],
          unknownValue: SortOrder.artemisUnknown),
      doorsNum: $enumDecodeNullable(_$SortOrderEnumMap, json['doors_num'],
          unknownValue: SortOrder.artemisUnknown),
      seatsNum: $enumDecodeNullable(_$SortOrderEnumMap, json['seats_num'],
          unknownValue: SortOrder.artemisUnknown),
      isFirstOwner: $enumDecodeNullable(
          _$SortOrderEnumMap, json['is_first_owner'],
          unknownValue: SortOrder.artemisUnknown),
      isServiceBookAvailable: $enumDecodeNullable(
          _$SortOrderEnumMap, json['is_service_book_available'],
          unknownValue: SortOrder.artemisUnknown),
      isVehicleGaraged: $enumDecodeNullable(
          _$SortOrderEnumMap, json['is_vehicle_garaged'],
          unknownValue: SortOrder.artemisUnknown),
      engineDisplacementCm3: $enumDecodeNullable(
          _$SortOrderEnumMap, json['engine_displacement_cm3'],
          unknownValue: SortOrder.artemisUnknown),
      emissionClassCid: $enumDecodeNullable(
          _$SortOrderEnumMap, json['emission_class_cid'],
          unknownValue: SortOrder.artemisUnknown),
      emissionClass: json['emission_class'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['emission_class'] as Map<String, dynamic>),
      batteryCapacityKwh: $enumDecodeNullable(
          _$SortOrderEnumMap, json['battery_capacity_kwh'],
          unknownValue: SortOrder.artemisUnknown),
      conditioningCid: $enumDecodeNullable(
          _$SortOrderEnumMap, json['conditioning_cid'],
          unknownValue: SortOrder.artemisUnknown),
      conditioning: json['conditioning'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['conditioning'] as Map<String, dynamic>),
      colorExteriorCid: $enumDecodeNullable(
          _$SortOrderEnumMap, json['color_exterior_cid'],
          unknownValue: SortOrder.artemisUnknown),
      colorExterior: json['color_exterior'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['color_exterior'] as Map<String, dynamic>),
      colorInteriorCid: $enumDecodeNullable(
          _$SortOrderEnumMap, json['color_interior_cid'],
          unknownValue: SortOrder.artemisUnknown),
      colorInterior: json['color_interior'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['color_interior'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdAutoOrderByWithRelationInputToJson(
        AdAutoOrderByWithRelationInput instance) =>
    <String, dynamic>{
      'ad_auto_id': _$SortOrderEnumMap[instance.adAutoId],
      'ad_id': _$SortOrderEnumMap[instance.adId],
      'ad': instance.ad?.toJson(),
      'condition_type_cid': _$SortOrderEnumMap[instance.conditionTypeCid],
      'condition_type': instance.conditionType?.toJson(),
      'vehicle_type_cid': _$SortOrderEnumMap[instance.vehicleTypeCid],
      'vehicle_type': instance.vehicleType?.toJson(),
      'fuel_type_cid': _$SortOrderEnumMap[instance.fuelTypeCid],
      'fuel_type': instance.fuelType?.toJson(),
      'transmission_type_cid': _$SortOrderEnumMap[instance.transmissionTypeCid],
      'transmission_type': instance.transmissionType?.toJson(),
      'make_cid': _$SortOrderEnumMap[instance.makeCid],
      'make': instance.make?.toJson(),
      'model_cid': _$SortOrderEnumMap[instance.modelCid],
      'model': instance.model?.toJson(),
      'year': _$SortOrderEnumMap[instance.year],
      'km': _$SortOrderEnumMap[instance.km],
      'power_kw': _$SortOrderEnumMap[instance.powerKw],
      'body_type_cid': _$SortOrderEnumMap[instance.bodyTypeCid],
      'body_type': instance.bodyType?.toJson(),
      'variant_cid': _$SortOrderEnumMap[instance.variantCid],
      'variant': instance.variant?.toJson(),
      'registered_until': _$SortOrderEnumMap[instance.registeredUntil],
      'doors_num': _$SortOrderEnumMap[instance.doorsNum],
      'seats_num': _$SortOrderEnumMap[instance.seatsNum],
      'is_first_owner': _$SortOrderEnumMap[instance.isFirstOwner],
      'is_service_book_available':
          _$SortOrderEnumMap[instance.isServiceBookAvailable],
      'is_vehicle_garaged': _$SortOrderEnumMap[instance.isVehicleGaraged],
      'engine_displacement_cm3':
          _$SortOrderEnumMap[instance.engineDisplacementCm3],
      'emission_class_cid': _$SortOrderEnumMap[instance.emissionClassCid],
      'emission_class': instance.emissionClass?.toJson(),
      'battery_capacity_kwh': _$SortOrderEnumMap[instance.batteryCapacityKwh],
      'conditioning_cid': _$SortOrderEnumMap[instance.conditioningCid],
      'conditioning': instance.conditioning?.toJson(),
      'color_exterior_cid': _$SortOrderEnumMap[instance.colorExteriorCid],
      'color_exterior': instance.colorExterior?.toJson(),
      'color_interior_cid': _$SortOrderEnumMap[instance.colorInteriorCid],
      'color_interior': instance.colorInterior?.toJson(),
    };

CategoryOrderByWithRelationInput _$CategoryOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    CategoryOrderByWithRelationInput(
      categoryId: $enumDecodeNullable(_$SortOrderEnumMap, json['category_id'],
          unknownValue: SortOrder.artemisUnknown),
      createdAt: $enumDecodeNullable(_$SortOrderEnumMap, json['created_at'],
          unknownValue: SortOrder.artemisUnknown),
      updatedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['updated_at'],
          unknownValue: SortOrder.artemisUnknown),
      deletedAt: $enumDecodeNullable(_$SortOrderEnumMap, json['deleted_at'],
          unknownValue: SortOrder.artemisUnknown),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name'],
          unknownValue: SortOrder.artemisUnknown),
      children: json['children'] == null
          ? null
          : CategoryOrderByRelationAggregateInput.fromJson(
              json['children'] as Map<String, dynamic>),
      parentCategoryId: $enumDecodeNullable(
          _$SortOrderEnumMap, json['parent_category_id'],
          unknownValue: SortOrder.artemisUnknown),
      parent: json['parent'] == null
          ? null
          : CategoryOrderByWithRelationInput.fromJson(
              json['parent'] as Map<String, dynamic>),
      icon: $enumDecodeNullable(_$SortOrderEnumMap, json['icon'],
          unknownValue: SortOrder.artemisUnknown),
      code: $enumDecodeNullable(_$SortOrderEnumMap, json['code'],
          unknownValue: SortOrder.artemisUnknown),
      weight: $enumDecodeNullable(_$SortOrderEnumMap, json['weight'],
          unknownValue: SortOrder.artemisUnknown),
      adCategories: json['ad_categories'] == null
          ? null
          : AdCategoryOrderByRelationAggregateInput.fromJson(
              json['ad_categories'] as Map<String, dynamic>),
      adAutoConditionType: json['AdAutoConditionType'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoConditionType'] as Map<String, dynamic>),
      adAutoVehicleType: json['AdAutoVehicleType'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoVehicleType'] as Map<String, dynamic>),
      adAutoFuelType: json['AdAutoFuelType'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoFuelType'] as Map<String, dynamic>),
      adAutoTransmissionType: json['AdAutoTransmissionType'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoTransmissionType'] as Map<String, dynamic>),
      adAutoMake: json['AdAutoMake'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoMake'] as Map<String, dynamic>),
      adAutoModel: json['AdAutoModel'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoModel'] as Map<String, dynamic>),
      adAutoBodyType: json['AdAutoBodyType'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoBodyType'] as Map<String, dynamic>),
      adAutoVariant: json['AdAutoVariant'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoVariant'] as Map<String, dynamic>),
      adAutoEmissionClass: json['AdAutoEmissionClass'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoEmissionClass'] as Map<String, dynamic>),
      adAutoConditioning: json['AdAutoConditioning'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoConditioning'] as Map<String, dynamic>),
      adAutoColorInterior: json['AdAutoColorInterior'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoColorInterior'] as Map<String, dynamic>),
      adAutoColorExterior: json['AdAutoColorExterior'] == null
          ? null
          : AdAutoOrderByRelationAggregateInput.fromJson(
              json['AdAutoColorExterior'] as Map<String, dynamic>),
      language: json['Language'] == null
          ? null
          : BlogOrderByRelationAggregateInput.fromJson(
              json['Language'] as Map<String, dynamic>),
      promotionRegion: json['PromotionRegion'] == null
          ? null
          : PromotionPlanOrderByRelationAggregateInput.fromJson(
              json['PromotionRegion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryOrderByWithRelationInputToJson(
        CategoryOrderByWithRelationInput instance) =>
    <String, dynamic>{
      'category_id': _$SortOrderEnumMap[instance.categoryId],
      'created_at': _$SortOrderEnumMap[instance.createdAt],
      'updated_at': _$SortOrderEnumMap[instance.updatedAt],
      'deleted_at': _$SortOrderEnumMap[instance.deletedAt],
      'name': _$SortOrderEnumMap[instance.name],
      'children': instance.children?.toJson(),
      'parent_category_id': _$SortOrderEnumMap[instance.parentCategoryId],
      'parent': instance.parent?.toJson(),
      'icon': _$SortOrderEnumMap[instance.icon],
      'code': _$SortOrderEnumMap[instance.code],
      'weight': _$SortOrderEnumMap[instance.weight],
      'ad_categories': instance.adCategories?.toJson(),
      'AdAutoConditionType': instance.adAutoConditionType?.toJson(),
      'AdAutoVehicleType': instance.adAutoVehicleType?.toJson(),
      'AdAutoFuelType': instance.adAutoFuelType?.toJson(),
      'AdAutoTransmissionType': instance.adAutoTransmissionType?.toJson(),
      'AdAutoMake': instance.adAutoMake?.toJson(),
      'AdAutoModel': instance.adAutoModel?.toJson(),
      'AdAutoBodyType': instance.adAutoBodyType?.toJson(),
      'AdAutoVariant': instance.adAutoVariant?.toJson(),
      'AdAutoEmissionClass': instance.adAutoEmissionClass?.toJson(),
      'AdAutoConditioning': instance.adAutoConditioning?.toJson(),
      'AdAutoColorInterior': instance.adAutoColorInterior?.toJson(),
      'AdAutoColorExterior': instance.adAutoColorExterior?.toJson(),
      'Language': instance.language?.toJson(),
      'PromotionRegion': instance.promotionRegion?.toJson(),
    };

CategoryOrderByRelationAggregateInput
    _$CategoryOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        CategoryOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
              unknownValue: SortOrder.artemisUnknown),
        );

Map<String, dynamic> _$CategoryOrderByRelationAggregateInputToJson(
        CategoryOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

AdAutoOrderByRelationAggregateInput
    _$AdAutoOrderByRelationAggregateInputFromJson(Map<String, dynamic> json) =>
        AdAutoOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
              unknownValue: SortOrder.artemisUnknown),
        );

Map<String, dynamic> _$AdAutoOrderByRelationAggregateInputToJson(
        AdAutoOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

PromotionPlanOrderByRelationAggregateInput
    _$PromotionPlanOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        PromotionPlanOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
              unknownValue: SortOrder.artemisUnknown),
        );

Map<String, dynamic> _$PromotionPlanOrderByRelationAggregateInputToJson(
        PromotionPlanOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

AdHouseOrderByWithRelationInput _$AdHouseOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    AdHouseOrderByWithRelationInput(
      adHouseId: $enumDecodeNullable(_$SortOrderEnumMap, json['ad_house_id'],
          unknownValue: SortOrder.artemisUnknown),
      adId: $enumDecodeNullable(_$SortOrderEnumMap, json['ad_id'],
          unknownValue: SortOrder.artemisUnknown),
      ad: json['ad'] == null
          ? null
          : AdOrderByWithRelationInput.fromJson(
              json['ad'] as Map<String, dynamic>),
      meters: $enumDecodeNullable(_$SortOrderEnumMap, json['meters'],
          unknownValue: SortOrder.artemisUnknown),
    );

Map<String, dynamic> _$AdHouseOrderByWithRelationInputToJson(
        AdHouseOrderByWithRelationInput instance) =>
    <String, dynamic>{
      'ad_house_id': _$SortOrderEnumMap[instance.adHouseId],
      'ad_id': _$SortOrderEnumMap[instance.adId],
      'ad': instance.ad?.toJson(),
      'meters': _$SortOrderEnumMap[instance.meters],
    };

ListAdOrderByRelationAggregateInput
    _$ListAdOrderByRelationAggregateInputFromJson(Map<String, dynamic> json) =>
        ListAdOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count'],
              unknownValue: SortOrder.artemisUnknown),
        );

Map<String, dynamic> _$ListAdOrderByRelationAggregateInputToJson(
        ListAdOrderByRelationAggregateInput instance) =>
    <String, dynamic>{
      '_count': _$SortOrderEnumMap[instance.$count],
    };

FindAllAdsMyAds$Query$Ad _$FindAllAdsMyAds$Query$AdFromJson(
        Map<String, dynamic> json) =>
    FindAllAdsMyAds$Query$Ad()
      ..$$typename = json['__typename'] as String?
      ..adId = json['ad_id'] as String
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['created_at'] as String)
      ..updatedAt =
          fromGraphQLDateTimeToDartDateTime(json['updated_at'] as String)
      ..deletedAt = fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['deleted_at'] as String?)
      ..title = json['title'] as String
      ..text = json['text'] as String
      ..coordsLatitude = (json['coords_latitude'] as num?)?.toDouble()
      ..coordsLongitude = (json['coords_longitude'] as num?)?.toDouble()
      ..coordsRadius = json['coords_radius'] as int?
      ..address = json['address'] as String?
      ..priceEurocent = json['price_eurocent'] as int?
      ..priceRating = fromGraphQLDecimalNullableToDartDecimalNullable(
          json['price_rating'] as String?)
      ..files = (json['files'] as List<dynamic>?)
          ?.map((e) => AdWithAdAutoFragmentMixin$File.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..adAuto = json['ad_auto'] == null
          ? null
          : AdWithAdAutoFragmentMixin$AdAuto.fromJson(
              json['ad_auto'] as Map<String, dynamic>);

Map<String, dynamic> _$FindAllAdsMyAds$Query$AdToJson(
        FindAllAdsMyAds$Query$Ad instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'ad_id': instance.adId,
      'created_at': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updated_at': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'deleted_at':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.deletedAt),
      'title': instance.title,
      'text': instance.text,
      'coords_latitude': instance.coordsLatitude,
      'coords_longitude': instance.coordsLongitude,
      'coords_radius': instance.coordsRadius,
      'address': instance.address,
      'price_eurocent': instance.priceEurocent,
      'price_rating':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.priceRating),
      'files': instance.files?.map((e) => e.toJson()).toList(),
      'ad_auto': instance.adAuto?.toJson(),
    };

FindAllAdsMyAds$Query _$FindAllAdsMyAds$QueryFromJson(
        Map<String, dynamic> json) =>
    FindAllAdsMyAds$Query()
      ..findAllAds = (json['findAllAds'] as List<dynamic>)
          .map((e) =>
              FindAllAdsMyAds$Query$Ad.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindAllAdsMyAds$QueryToJson(
        FindAllAdsMyAds$Query instance) =>
    <String, dynamic>{
      'findAllAds': instance.findAllAds.map((e) => e.toJson()).toList(),
    };

FindAllAdsWhere$Query$Ad _$FindAllAdsWhere$Query$AdFromJson(
        Map<String, dynamic> json) =>
    FindAllAdsWhere$Query$Ad()
      ..$$typename = json['__typename'] as String?
      ..adId = json['ad_id'] as String
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['created_at'] as String)
      ..updatedAt =
          fromGraphQLDateTimeToDartDateTime(json['updated_at'] as String)
      ..deletedAt = fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['deleted_at'] as String?)
      ..title = json['title'] as String
      ..text = json['text'] as String
      ..coordsLatitude = (json['coords_latitude'] as num?)?.toDouble()
      ..coordsLongitude = (json['coords_longitude'] as num?)?.toDouble()
      ..coordsRadius = json['coords_radius'] as int?
      ..address = json['address'] as String?
      ..priceEurocent = json['price_eurocent'] as int?
      ..priceRating = fromGraphQLDecimalNullableToDartDecimalNullable(
          json['price_rating'] as String?)
      ..files = (json['files'] as List<dynamic>?)
          ?.map((e) => AdWithAdAutoFragmentMixin$File.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..adAuto = json['ad_auto'] == null
          ? null
          : AdWithAdAutoFragmentMixin$AdAuto.fromJson(
              json['ad_auto'] as Map<String, dynamic>);

Map<String, dynamic> _$FindAllAdsWhere$Query$AdToJson(
        FindAllAdsWhere$Query$Ad instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'ad_id': instance.adId,
      'created_at': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updated_at': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'deleted_at':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.deletedAt),
      'title': instance.title,
      'text': instance.text,
      'coords_latitude': instance.coordsLatitude,
      'coords_longitude': instance.coordsLongitude,
      'coords_radius': instance.coordsRadius,
      'address': instance.address,
      'price_eurocent': instance.priceEurocent,
      'price_rating':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.priceRating),
      'files': instance.files?.map((e) => e.toJson()).toList(),
      'ad_auto': instance.adAuto?.toJson(),
    };

FindAllAdsWhere$Query _$FindAllAdsWhere$QueryFromJson(
        Map<String, dynamic> json) =>
    FindAllAdsWhere$Query()
      ..findAllAds = (json['findAllAds'] as List<dynamic>)
          .map((e) =>
              FindAllAdsWhere$Query$Ad.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindAllAdsWhere$QueryToJson(
        FindAllAdsWhere$Query instance) =>
    <String, dynamic>{
      'findAllAds': instance.findAllAds.map((e) => e.toJson()).toList(),
    };

AdWhereInput _$AdWhereInputFromJson(Map<String, dynamic> json) => AdWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => AdWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => AdWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => AdWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      adId: json['ad_id'] == null
          ? null
          : IntFilter.fromJson(json['ad_id'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTimeFilter.fromJson(json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTimeFilter.fromJson(json['updated_at'] as Map<String, dynamic>),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['deleted_at'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : StringFilter.fromJson(json['text'] as Map<String, dynamic>),
      coordsLatitude: json['coords_latitude'] == null
          ? null
          : FloatNullableFilter.fromJson(
              json['coords_latitude'] as Map<String, dynamic>),
      coordsLongitude: json['coords_longitude'] == null
          ? null
          : FloatNullableFilter.fromJson(
              json['coords_longitude'] as Map<String, dynamic>),
      coordsRadius: json['coords_radius'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['coords_radius'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['address'] as Map<String, dynamic>),
      priceEurocent: json['price_eurocent'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['price_eurocent'] as Map<String, dynamic>),
      userSub: json['user_sub'] == null
          ? null
          : StringFilter.fromJson(json['user_sub'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      adCategories: json['ad_categories'] == null
          ? null
          : AdCategoryListRelationFilter.fromJson(
              json['ad_categories'] as Map<String, dynamic>),
      adAuto: json['ad_auto'] == null
          ? null
          : AdAutoRelationFilter.fromJson(
              json['ad_auto'] as Map<String, dynamic>),
      adHouse: json['ad_house'] == null
          ? null
          : AdHouseRelationFilter.fromJson(
              json['ad_house'] as Map<String, dynamic>),
      files: json['files'] == null
          ? null
          : FileListRelationFilter.fromJson(
              json['files'] as Map<String, dynamic>),
      listAd: json['ListAd'] == null
          ? null
          : ListAdListRelationFilter.fromJson(
              json['ListAd'] as Map<String, dynamic>),
      isSold: json['is_sold'] == null
          ? null
          : BoolFilter.fromJson(json['is_sold'] as Map<String, dynamic>),
      priceRating: json['price_rating'] == null
          ? null
          : DecimalNullableFilter.fromJson(
              json['price_rating'] as Map<String, dynamic>),
      adPromotion: json['AdPromotion'] == null
          ? null
          : AdPromotionListRelationFilter.fromJson(
              json['AdPromotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdWhereInputToJson(AdWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'ad_id': instance.adId?.toJson(),
      'created_at': instance.createdAt?.toJson(),
      'updated_at': instance.updatedAt?.toJson(),
      'deleted_at': instance.deletedAt?.toJson(),
      'title': instance.title?.toJson(),
      'text': instance.text?.toJson(),
      'coords_latitude': instance.coordsLatitude?.toJson(),
      'coords_longitude': instance.coordsLongitude?.toJson(),
      'coords_radius': instance.coordsRadius?.toJson(),
      'address': instance.address?.toJson(),
      'price_eurocent': instance.priceEurocent?.toJson(),
      'user_sub': instance.userSub?.toJson(),
      'user': instance.user?.toJson(),
      'ad_categories': instance.adCategories?.toJson(),
      'ad_auto': instance.adAuto?.toJson(),
      'ad_house': instance.adHouse?.toJson(),
      'files': instance.files?.toJson(),
      'ListAd': instance.listAd?.toJson(),
      'is_sold': instance.isSold?.toJson(),
      'price_rating': instance.priceRating?.toJson(),
      'AdPromotion': instance.adPromotion?.toJson(),
    };

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: json['equals'] as int?,
      kw$in: (json['in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int).toList(),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) => <String, dynamic>{
      'equals': instance.equals,
      'in': instance.kw$in,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'not': instance.not?.toJson(),
    };

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      kw$in: (json['in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int).toList(),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'in': instance.kw$in,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'not': instance.not?.toJson(),
    };

DateTimeFilter _$DateTimeFilterFromJson(Map<String, dynamic> json) =>
    DateTimeFilter(
      equals: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['equals'] as String?),
      kw$in: fromGraphQLListNullableDateTimeToDartListNullableDateTime(
          json['in'] as List<String>?),
      notIn: fromGraphQLListNullableDateTimeToDartListNullableDateTime(
          json['notIn'] as List<String>?),
      lt: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['lt'] as String?),
      lte: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['lte'] as String?),
      gt: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['gt'] as String?),
      gte: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['gte'] as String?),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeFilterToJson(DateTimeFilter instance) =>
    <String, dynamic>{
      'equals':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.equals),
      'in': fromDartListNullableDateTimeToGraphQLListNullableDateTime(
          instance.kw$in),
      'notIn': fromDartListNullableDateTimeToGraphQLListNullableDateTime(
          instance.notIn),
      'lt': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.lt),
      'lte': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.lte),
      'gt': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.gt),
      'gte': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.gte),
      'not': instance.not?.toJson(),
    };

NestedDateTimeFilter _$NestedDateTimeFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeFilter(
      equals: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['equals'] as String?),
      kw$in: fromGraphQLListNullableDateTimeToDartListNullableDateTime(
          json['in'] as List<String>?),
      notIn: fromGraphQLListNullableDateTimeToDartListNullableDateTime(
          json['notIn'] as List<String>?),
      lt: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['lt'] as String?),
      lte: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['lte'] as String?),
      gt: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['gt'] as String?),
      gte: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['gte'] as String?),
      not: json['not'] == null
          ? null
          : NestedDateTimeFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeFilterToJson(
        NestedDateTimeFilter instance) =>
    <String, dynamic>{
      'equals':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.equals),
      'in': fromDartListNullableDateTimeToGraphQLListNullableDateTime(
          instance.kw$in),
      'notIn': fromDartListNullableDateTimeToGraphQLListNullableDateTime(
          instance.notIn),
      'lt': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.lt),
      'lte': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.lte),
      'gt': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.gt),
      'gte': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.gte),
      'not': instance.not?.toJson(),
    };

DateTimeNullableFilter _$DateTimeNullableFilterFromJson(
        Map<String, dynamic> json) =>
    DateTimeNullableFilter(
      equals: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['equals'] as String?),
      kw$in: fromGraphQLListNullableDateTimeToDartListNullableDateTime(
          json['in'] as List<String>?),
      notIn: fromGraphQLListNullableDateTimeToDartListNullableDateTime(
          json['notIn'] as List<String>?),
      lt: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['lt'] as String?),
      lte: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['lte'] as String?),
      gt: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['gt'] as String?),
      gte: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['gte'] as String?),
      not: json['not'] == null
          ? null
          : NestedDateTimeNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DateTimeNullableFilterToJson(
        DateTimeNullableFilter instance) =>
    <String, dynamic>{
      'equals':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.equals),
      'in': fromDartListNullableDateTimeToGraphQLListNullableDateTime(
          instance.kw$in),
      'notIn': fromDartListNullableDateTimeToGraphQLListNullableDateTime(
          instance.notIn),
      'lt': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.lt),
      'lte': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.lte),
      'gt': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.gt),
      'gte': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.gte),
      'not': instance.not?.toJson(),
    };

NestedDateTimeNullableFilter _$NestedDateTimeNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDateTimeNullableFilter(
      equals: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['equals'] as String?),
      kw$in: fromGraphQLListNullableDateTimeToDartListNullableDateTime(
          json['in'] as List<String>?),
      notIn: fromGraphQLListNullableDateTimeToDartListNullableDateTime(
          json['notIn'] as List<String>?),
      lt: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['lt'] as String?),
      lte: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['lte'] as String?),
      gt: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['gt'] as String?),
      gte: fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['gte'] as String?),
      not: json['not'] == null
          ? null
          : NestedDateTimeNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDateTimeNullableFilterToJson(
        NestedDateTimeNullableFilter instance) =>
    <String, dynamic>{
      'equals':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.equals),
      'in': fromDartListNullableDateTimeToGraphQLListNullableDateTime(
          instance.kw$in),
      'notIn': fromDartListNullableDateTimeToGraphQLListNullableDateTime(
          instance.notIn),
      'lt': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.lt),
      'lte': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.lte),
      'gt': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.gt),
      'gte': fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.gte),
      'not': instance.not?.toJson(),
    };

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      kw$in: (json['in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'in': instance.kw$in,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'contains': instance.contains,
      'startsWith': instance.startsWith,
      'endsWith': instance.endsWith,
      'not': instance.not?.toJson(),
    };

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      kw$in: (json['in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'in': instance.kw$in,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'contains': instance.contains,
      'startsWith': instance.startsWith,
      'endsWith': instance.endsWith,
      'not': instance.not?.toJson(),
    };

FloatNullableFilter _$FloatNullableFilterFromJson(Map<String, dynamic> json) =>
    FloatNullableFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      kw$in: (json['in'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FloatNullableFilterToJson(
        FloatNullableFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'in': instance.kw$in,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'not': instance.not?.toJson(),
    };

NestedFloatNullableFilter _$NestedFloatNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedFloatNullableFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      kw$in: (json['in'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      notIn: (json['notIn'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatNullableFilterToJson(
        NestedFloatNullableFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'in': instance.kw$in,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'not': instance.not?.toJson(),
    };

IntNullableFilter _$IntNullableFilterFromJson(Map<String, dynamic> json) =>
    IntNullableFilter(
      equals: json['equals'] as int?,
      kw$in: (json['in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int).toList(),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntNullableFilterToJson(IntNullableFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'in': instance.kw$in,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'not': instance.not?.toJson(),
    };

NestedIntNullableFilter _$NestedIntNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntNullableFilter(
      equals: json['equals'] as int?,
      kw$in: (json['in'] as List<dynamic>?)?.map((e) => e as int).toList(),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int).toList(),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntNullableFilterToJson(
        NestedIntNullableFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'in': instance.kw$in,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'not': instance.not?.toJson(),
    };

StringNullableFilter _$StringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableFilter(
      equals: json['equals'] as String?,
      kw$in: (json['in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableFilterToJson(
        StringNullableFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'in': instance.kw$in,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'contains': instance.contains,
      'startsWith': instance.startsWith,
      'endsWith': instance.endsWith,
      'not': instance.not?.toJson(),
    };

NestedStringNullableFilter _$NestedStringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringNullableFilter(
      equals: json['equals'] as String?,
      kw$in: (json['in'] as List<dynamic>?)?.map((e) => e as String).toList(),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringNullableFilterToJson(
        NestedStringNullableFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'in': instance.kw$in,
      'notIn': instance.notIn,
      'lt': instance.lt,
      'lte': instance.lte,
      'gt': instance.gt,
      'gte': instance.gte,
      'contains': instance.contains,
      'startsWith': instance.startsWith,
      'endsWith': instance.endsWith,
      'not': instance.not?.toJson(),
    };

UserRelationFilter _$UserRelationFilterFromJson(Map<String, dynamic> json) =>
    UserRelationFilter(
      kw$is: json['is'] == null
          ? null
          : UserWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : UserWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRelationFilterToJson(UserRelationFilter instance) =>
    <String, dynamic>{
      'is': instance.kw$is?.toJson(),
      'isNot': instance.isNot?.toJson(),
    };

UserWhereInput _$UserWhereInputFromJson(Map<String, dynamic> json) =>
    UserWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      userSub: json['user_sub'] == null
          ? null
          : StringFilter.fromJson(json['user_sub'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringNullableFilter.fromJson(json['name'] as Map<String, dynamic>),
      ads: json['ads'] == null
          ? null
          : AdListRelationFilter.fromJson(json['ads'] as Map<String, dynamic>),
      files: json['files'] == null
          ? null
          : FileListRelationFilter.fromJson(
              json['files'] as Map<String, dynamic>),
      lists: json['lists'] == null
          ? null
          : ListListRelationFilter.fromJson(
              json['lists'] as Map<String, dynamic>),
      blogs: json['blogs'] == null
          ? null
          : BlogListRelationFilter.fromJson(
              json['blogs'] as Map<String, dynamic>),
      userPromotion: json['UserPromotion'] == null
          ? null
          : UserPromotionListRelationFilter.fromJson(
              json['UserPromotion'] as Map<String, dynamic>),
      adPromotion: json['AdPromotion'] == null
          ? null
          : AdPromotionListRelationFilter.fromJson(
              json['AdPromotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereInputToJson(UserWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'user_sub': instance.userSub?.toJson(),
      'name': instance.name?.toJson(),
      'ads': instance.ads?.toJson(),
      'files': instance.files?.toJson(),
      'lists': instance.lists?.toJson(),
      'blogs': instance.blogs?.toJson(),
      'UserPromotion': instance.userPromotion?.toJson(),
      'AdPromotion': instance.adPromotion?.toJson(),
    };

AdListRelationFilter _$AdListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    AdListRelationFilter(
      every: json['every'] == null
          ? null
          : AdWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : AdWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : AdWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdListRelationFilterToJson(
        AdListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

FileListRelationFilter _$FileListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    FileListRelationFilter(
      every: json['every'] == null
          ? null
          : FileWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : FileWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : FileWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FileListRelationFilterToJson(
        FileListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

FileWhereInput _$FileWhereInputFromJson(Map<String, dynamic> json) =>
    FileWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => FileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => FileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => FileWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      fileId: json['file_id'] == null
          ? null
          : IntFilter.fromJson(json['file_id'] as Map<String, dynamic>),
      filename: json['filename'] == null
          ? null
          : StringFilter.fromJson(json['filename'] as Map<String, dynamic>),
      filesize: json['filesize'] == null
          ? null
          : IntFilter.fromJson(json['filesize'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : StringFilter.fromJson(json['code'] as Map<String, dynamic>),
      path: json['path'] == null
          ? null
          : StringFilter.fromJson(json['path'] as Map<String, dynamic>),
      adId: json['ad_id'] == null
          ? null
          : IntFilter.fromJson(json['ad_id'] as Map<String, dynamic>),
      ad: json['ad'] == null
          ? null
          : AdRelationFilter.fromJson(json['ad'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FileWhereInputToJson(FileWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'file_id': instance.fileId?.toJson(),
      'filename': instance.filename?.toJson(),
      'filesize': instance.filesize?.toJson(),
      'code': instance.code?.toJson(),
      'path': instance.path?.toJson(),
      'ad_id': instance.adId?.toJson(),
      'ad': instance.ad?.toJson(),
      'user': instance.user?.toJson(),
    };

AdRelationFilter _$AdRelationFilterFromJson(Map<String, dynamic> json) =>
    AdRelationFilter(
      kw$is: json['is'] == null
          ? null
          : AdWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : AdWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdRelationFilterToJson(AdRelationFilter instance) =>
    <String, dynamic>{
      'is': instance.kw$is?.toJson(),
      'isNot': instance.isNot?.toJson(),
    };

ListListRelationFilter _$ListListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    ListListRelationFilter(
      every: json['every'] == null
          ? null
          : ListWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : ListWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : ListWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListListRelationFilterToJson(
        ListListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

ListWhereInput _$ListWhereInputFromJson(Map<String, dynamic> json) =>
    ListWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => ListWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => ListWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => ListWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      listId: json['list_id'] == null
          ? null
          : IntFilter.fromJson(json['list_id'] as Map<String, dynamic>),
      listType: json['list_type'] == null
          ? null
          : IntFilter.fromJson(json['list_type'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      searchParams: json['search_params'] == null
          ? null
          : StringFilter.fromJson(
              json['search_params'] as Map<String, dynamic>),
      isNotifiableByEmail: json['is_notifiable_by_email'] == null
          ? null
          : BoolFilter.fromJson(
              json['is_notifiable_by_email'] as Map<String, dynamic>),
      isNotifiableByPush: json['is_notifiable_by_push'] == null
          ? null
          : BoolFilter.fromJson(
              json['is_notifiable_by_push'] as Map<String, dynamic>),
      isNotifiableBySms: json['is_notifiable_by_sms'] == null
          ? null
          : BoolFilter.fromJson(
              json['is_notifiable_by_sms'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      listAd: json['ListAd'] == null
          ? null
          : ListAdListRelationFilter.fromJson(
              json['ListAd'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListWhereInputToJson(ListWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'list_id': instance.listId?.toJson(),
      'list_type': instance.listType?.toJson(),
      'title': instance.title?.toJson(),
      'search_params': instance.searchParams?.toJson(),
      'is_notifiable_by_email': instance.isNotifiableByEmail?.toJson(),
      'is_notifiable_by_push': instance.isNotifiableByPush?.toJson(),
      'is_notifiable_by_sms': instance.isNotifiableBySms?.toJson(),
      'user': instance.user?.toJson(),
      'ListAd': instance.listAd?.toJson(),
    };

BoolFilter _$BoolFilterFromJson(Map<String, dynamic> json) => BoolFilter(
      equals: json['equals'] as bool?,
      not: json['not'] == null
          ? null
          : NestedBoolFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoolFilterToJson(BoolFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'not': instance.not?.toJson(),
    };

NestedBoolFilter _$NestedBoolFilterFromJson(Map<String, dynamic> json) =>
    NestedBoolFilter(
      equals: json['equals'] as bool?,
      not: json['not'] == null
          ? null
          : NestedBoolFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedBoolFilterToJson(NestedBoolFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'not': instance.not?.toJson(),
    };

ListAdListRelationFilter _$ListAdListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    ListAdListRelationFilter(
      every: json['every'] == null
          ? null
          : ListAdWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : ListAdWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : ListAdWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListAdListRelationFilterToJson(
        ListAdListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

ListAdWhereInput _$ListAdWhereInputFromJson(Map<String, dynamic> json) =>
    ListAdWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => ListAdWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => ListAdWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => ListAdWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      adId: json['ad_id'] == null
          ? null
          : IntFilter.fromJson(json['ad_id'] as Map<String, dynamic>),
      ad: json['ad'] == null
          ? null
          : AdRelationFilter.fromJson(json['ad'] as Map<String, dynamic>),
      listId: json['list_id'] == null
          ? null
          : IntFilter.fromJson(json['list_id'] as Map<String, dynamic>),
      list: json['list'] == null
          ? null
          : ListRelationFilter.fromJson(json['list'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListAdWhereInputToJson(ListAdWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'ad_id': instance.adId?.toJson(),
      'ad': instance.ad?.toJson(),
      'list_id': instance.listId?.toJson(),
      'list': instance.list?.toJson(),
    };

ListRelationFilter _$ListRelationFilterFromJson(Map<String, dynamic> json) =>
    ListRelationFilter(
      kw$is: json['is'] == null
          ? null
          : ListWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : ListWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ListRelationFilterToJson(ListRelationFilter instance) =>
    <String, dynamic>{
      'is': instance.kw$is?.toJson(),
      'isNot': instance.isNot?.toJson(),
    };

BlogListRelationFilter _$BlogListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    BlogListRelationFilter(
      every: json['every'] == null
          ? null
          : BlogWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : BlogWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : BlogWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlogListRelationFilterToJson(
        BlogListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

BlogWhereInput _$BlogWhereInputFromJson(Map<String, dynamic> json) =>
    BlogWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => BlogWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => BlogWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => BlogWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      blogId: json['blog_id'] == null
          ? null
          : IntFilter.fromJson(json['blog_id'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTimeFilter.fromJson(json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTimeFilter.fromJson(json['updated_at'] as Map<String, dynamic>),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['deleted_at'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      slug: json['slug'] == null
          ? null
          : StringFilter.fromJson(json['slug'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : StringFilter.fromJson(json['text'] as Map<String, dynamic>),
      languageCid: json['language_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['language_cid'] as Map<String, dynamic>),
      language: json['language'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['language'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlogWhereInputToJson(BlogWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'blog_id': instance.blogId?.toJson(),
      'created_at': instance.createdAt?.toJson(),
      'updated_at': instance.updatedAt?.toJson(),
      'deleted_at': instance.deletedAt?.toJson(),
      'title': instance.title?.toJson(),
      'slug': instance.slug?.toJson(),
      'text': instance.text?.toJson(),
      'language_cid': instance.languageCid?.toJson(),
      'language': instance.language?.toJson(),
      'user': instance.user?.toJson(),
    };

CategoryRelationFilter _$CategoryRelationFilterFromJson(
        Map<String, dynamic> json) =>
    CategoryRelationFilter(
      kw$is: json['is'] == null
          ? null
          : CategoryWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : CategoryWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryRelationFilterToJson(
        CategoryRelationFilter instance) =>
    <String, dynamic>{
      'is': instance.kw$is?.toJson(),
      'isNot': instance.isNot?.toJson(),
    };

CategoryWhereInput _$CategoryWhereInputFromJson(Map<String, dynamic> json) =>
    CategoryWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => CategoryWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => CategoryWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => CategoryWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      categoryId: json['category_id'] == null
          ? null
          : IntFilter.fromJson(json['category_id'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTimeFilter.fromJson(json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTimeFilter.fromJson(json['updated_at'] as Map<String, dynamic>),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['deleted_at'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringFilter.fromJson(json['name'] as Map<String, dynamic>),
      children: json['children'] == null
          ? null
          : CategoryListRelationFilter.fromJson(
              json['children'] as Map<String, dynamic>),
      parentCategoryId: json['parent_category_id'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['parent_category_id'] as Map<String, dynamic>),
      parent: json['parent'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['parent'] as Map<String, dynamic>),
      icon: json['icon'] == null
          ? null
          : StringNullableFilter.fromJson(json['icon'] as Map<String, dynamic>),
      code: json['code'] == null
          ? null
          : StringFilter.fromJson(json['code'] as Map<String, dynamic>),
      weight: json['weight'] == null
          ? null
          : IntNullableFilter.fromJson(json['weight'] as Map<String, dynamic>),
      adCategories: json['ad_categories'] == null
          ? null
          : AdCategoryListRelationFilter.fromJson(
              json['ad_categories'] as Map<String, dynamic>),
      adAutoConditionType: json['AdAutoConditionType'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoConditionType'] as Map<String, dynamic>),
      adAutoVehicleType: json['AdAutoVehicleType'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoVehicleType'] as Map<String, dynamic>),
      adAutoFuelType: json['AdAutoFuelType'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoFuelType'] as Map<String, dynamic>),
      adAutoTransmissionType: json['AdAutoTransmissionType'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoTransmissionType'] as Map<String, dynamic>),
      adAutoMake: json['AdAutoMake'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoMake'] as Map<String, dynamic>),
      adAutoModel: json['AdAutoModel'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoModel'] as Map<String, dynamic>),
      adAutoBodyType: json['AdAutoBodyType'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoBodyType'] as Map<String, dynamic>),
      adAutoVariant: json['AdAutoVariant'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoVariant'] as Map<String, dynamic>),
      adAutoEmissionClass: json['AdAutoEmissionClass'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoEmissionClass'] as Map<String, dynamic>),
      adAutoConditioning: json['AdAutoConditioning'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoConditioning'] as Map<String, dynamic>),
      adAutoColorInterior: json['AdAutoColorInterior'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoColorInterior'] as Map<String, dynamic>),
      adAutoColorExterior: json['AdAutoColorExterior'] == null
          ? null
          : AdAutoListRelationFilter.fromJson(
              json['AdAutoColorExterior'] as Map<String, dynamic>),
      language: json['Language'] == null
          ? null
          : BlogListRelationFilter.fromJson(
              json['Language'] as Map<String, dynamic>),
      promotionRegion: json['PromotionRegion'] == null
          ? null
          : PromotionPlanListRelationFilter.fromJson(
              json['PromotionRegion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryWhereInputToJson(CategoryWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'category_id': instance.categoryId?.toJson(),
      'created_at': instance.createdAt?.toJson(),
      'updated_at': instance.updatedAt?.toJson(),
      'deleted_at': instance.deletedAt?.toJson(),
      'name': instance.name?.toJson(),
      'children': instance.children?.toJson(),
      'parent_category_id': instance.parentCategoryId?.toJson(),
      'parent': instance.parent?.toJson(),
      'icon': instance.icon?.toJson(),
      'code': instance.code?.toJson(),
      'weight': instance.weight?.toJson(),
      'ad_categories': instance.adCategories?.toJson(),
      'AdAutoConditionType': instance.adAutoConditionType?.toJson(),
      'AdAutoVehicleType': instance.adAutoVehicleType?.toJson(),
      'AdAutoFuelType': instance.adAutoFuelType?.toJson(),
      'AdAutoTransmissionType': instance.adAutoTransmissionType?.toJson(),
      'AdAutoMake': instance.adAutoMake?.toJson(),
      'AdAutoModel': instance.adAutoModel?.toJson(),
      'AdAutoBodyType': instance.adAutoBodyType?.toJson(),
      'AdAutoVariant': instance.adAutoVariant?.toJson(),
      'AdAutoEmissionClass': instance.adAutoEmissionClass?.toJson(),
      'AdAutoConditioning': instance.adAutoConditioning?.toJson(),
      'AdAutoColorInterior': instance.adAutoColorInterior?.toJson(),
      'AdAutoColorExterior': instance.adAutoColorExterior?.toJson(),
      'Language': instance.language?.toJson(),
      'PromotionRegion': instance.promotionRegion?.toJson(),
    };

CategoryListRelationFilter _$CategoryListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    CategoryListRelationFilter(
      every: json['every'] == null
          ? null
          : CategoryWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : CategoryWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : CategoryWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryListRelationFilterToJson(
        CategoryListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

AdCategoryListRelationFilter _$AdCategoryListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    AdCategoryListRelationFilter(
      every: json['every'] == null
          ? null
          : AdCategoryWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : AdCategoryWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : AdCategoryWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdCategoryListRelationFilterToJson(
        AdCategoryListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

AdCategoryWhereInput _$AdCategoryWhereInputFromJson(
        Map<String, dynamic> json) =>
    AdCategoryWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => AdCategoryWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => AdCategoryWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => AdCategoryWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      adId: json['ad_id'] == null
          ? null
          : IntFilter.fromJson(json['ad_id'] as Map<String, dynamic>),
      ad: json['ad'] == null
          ? null
          : AdRelationFilter.fromJson(json['ad'] as Map<String, dynamic>),
      categoryId: json['category_id'] == null
          ? null
          : IntFilter.fromJson(json['category_id'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdCategoryWhereInputToJson(
        AdCategoryWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'ad_id': instance.adId?.toJson(),
      'ad': instance.ad?.toJson(),
      'category_id': instance.categoryId?.toJson(),
      'category': instance.category?.toJson(),
    };

AdAutoListRelationFilter _$AdAutoListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    AdAutoListRelationFilter(
      every: json['every'] == null
          ? null
          : AdAutoWhereInput.fromJson(json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : AdAutoWhereInput.fromJson(json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : AdAutoWhereInput.fromJson(json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdAutoListRelationFilterToJson(
        AdAutoListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

AdAutoWhereInput _$AdAutoWhereInputFromJson(Map<String, dynamic> json) =>
    AdAutoWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => AdAutoWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => AdAutoWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => AdAutoWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      adAutoId: json['ad_auto_id'] == null
          ? null
          : IntFilter.fromJson(json['ad_auto_id'] as Map<String, dynamic>),
      adId: json['ad_id'] == null
          ? null
          : IntFilter.fromJson(json['ad_id'] as Map<String, dynamic>),
      ad: json['ad'] == null
          ? null
          : AdRelationFilter.fromJson(json['ad'] as Map<String, dynamic>),
      conditionTypeCid: json['condition_type_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['condition_type_cid'] as Map<String, dynamic>),
      conditionType: json['condition_type'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['condition_type'] as Map<String, dynamic>),
      vehicleTypeCid: json['vehicle_type_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['vehicle_type_cid'] as Map<String, dynamic>),
      vehicleType: json['vehicle_type'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['vehicle_type'] as Map<String, dynamic>),
      fuelTypeCid: json['fuel_type_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['fuel_type_cid'] as Map<String, dynamic>),
      fuelType: json['fuel_type'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['fuel_type'] as Map<String, dynamic>),
      transmissionTypeCid: json['transmission_type_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['transmission_type_cid'] as Map<String, dynamic>),
      transmissionType: json['transmission_type'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['transmission_type'] as Map<String, dynamic>),
      makeCid: json['make_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['make_cid'] as Map<String, dynamic>),
      make: json['make'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['make'] as Map<String, dynamic>),
      modelCid: json['model_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['model_cid'] as Map<String, dynamic>),
      model: json['model'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['model'] as Map<String, dynamic>),
      year: json['year'] == null
          ? null
          : IntFilter.fromJson(json['year'] as Map<String, dynamic>),
      km: json['km'] == null
          ? null
          : IntNullableFilter.fromJson(json['km'] as Map<String, dynamic>),
      powerKw: json['power_kw'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['power_kw'] as Map<String, dynamic>),
      bodyTypeCid: json['body_type_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['body_type_cid'] as Map<String, dynamic>),
      bodyType: json['body_type'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['body_type'] as Map<String, dynamic>),
      variantCid: json['variant_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['variant_cid'] as Map<String, dynamic>),
      variant: json['variant'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['variant'] as Map<String, dynamic>),
      registeredUntil: json['registered_until'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['registered_until'] as Map<String, dynamic>),
      doorsNum: json['doors_num'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['doors_num'] as Map<String, dynamic>),
      seatsNum: json['seats_num'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['seats_num'] as Map<String, dynamic>),
      isFirstOwner: json['is_first_owner'] == null
          ? null
          : BoolNullableFilter.fromJson(
              json['is_first_owner'] as Map<String, dynamic>),
      isServiceBookAvailable: json['is_service_book_available'] == null
          ? null
          : BoolNullableFilter.fromJson(
              json['is_service_book_available'] as Map<String, dynamic>),
      isVehicleGaraged: json['is_vehicle_garaged'] == null
          ? null
          : BoolNullableFilter.fromJson(
              json['is_vehicle_garaged'] as Map<String, dynamic>),
      engineDisplacementCm3: json['engine_displacement_cm3'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['engine_displacement_cm3'] as Map<String, dynamic>),
      emissionClassCid: json['emission_class_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['emission_class_cid'] as Map<String, dynamic>),
      emissionClass: json['emission_class'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['emission_class'] as Map<String, dynamic>),
      batteryCapacityKwh: json['battery_capacity_kwh'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['battery_capacity_kwh'] as Map<String, dynamic>),
      conditioningCid: json['conditioning_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['conditioning_cid'] as Map<String, dynamic>),
      conditioning: json['conditioning'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['conditioning'] as Map<String, dynamic>),
      colorExteriorCid: json['color_exterior_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['color_exterior_cid'] as Map<String, dynamic>),
      colorExterior: json['color_exterior'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['color_exterior'] as Map<String, dynamic>),
      colorInteriorCid: json['color_interior_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['color_interior_cid'] as Map<String, dynamic>),
      colorInterior: json['color_interior'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['color_interior'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdAutoWhereInputToJson(AdAutoWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'ad_auto_id': instance.adAutoId?.toJson(),
      'ad_id': instance.adId?.toJson(),
      'ad': instance.ad?.toJson(),
      'condition_type_cid': instance.conditionTypeCid?.toJson(),
      'condition_type': instance.conditionType?.toJson(),
      'vehicle_type_cid': instance.vehicleTypeCid?.toJson(),
      'vehicle_type': instance.vehicleType?.toJson(),
      'fuel_type_cid': instance.fuelTypeCid?.toJson(),
      'fuel_type': instance.fuelType?.toJson(),
      'transmission_type_cid': instance.transmissionTypeCid?.toJson(),
      'transmission_type': instance.transmissionType?.toJson(),
      'make_cid': instance.makeCid?.toJson(),
      'make': instance.make?.toJson(),
      'model_cid': instance.modelCid?.toJson(),
      'model': instance.model?.toJson(),
      'year': instance.year?.toJson(),
      'km': instance.km?.toJson(),
      'power_kw': instance.powerKw?.toJson(),
      'body_type_cid': instance.bodyTypeCid?.toJson(),
      'body_type': instance.bodyType?.toJson(),
      'variant_cid': instance.variantCid?.toJson(),
      'variant': instance.variant?.toJson(),
      'registered_until': instance.registeredUntil?.toJson(),
      'doors_num': instance.doorsNum?.toJson(),
      'seats_num': instance.seatsNum?.toJson(),
      'is_first_owner': instance.isFirstOwner?.toJson(),
      'is_service_book_available': instance.isServiceBookAvailable?.toJson(),
      'is_vehicle_garaged': instance.isVehicleGaraged?.toJson(),
      'engine_displacement_cm3': instance.engineDisplacementCm3?.toJson(),
      'emission_class_cid': instance.emissionClassCid?.toJson(),
      'emission_class': instance.emissionClass?.toJson(),
      'battery_capacity_kwh': instance.batteryCapacityKwh?.toJson(),
      'conditioning_cid': instance.conditioningCid?.toJson(),
      'conditioning': instance.conditioning?.toJson(),
      'color_exterior_cid': instance.colorExteriorCid?.toJson(),
      'color_exterior': instance.colorExterior?.toJson(),
      'color_interior_cid': instance.colorInteriorCid?.toJson(),
      'color_interior': instance.colorInterior?.toJson(),
    };

BoolNullableFilter _$BoolNullableFilterFromJson(Map<String, dynamic> json) =>
    BoolNullableFilter(
      equals: json['equals'] as bool?,
      not: json['not'] == null
          ? null
          : NestedBoolNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BoolNullableFilterToJson(BoolNullableFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'not': instance.not?.toJson(),
    };

NestedBoolNullableFilter _$NestedBoolNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedBoolNullableFilter(
      equals: json['equals'] as bool?,
      not: json['not'] == null
          ? null
          : NestedBoolNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedBoolNullableFilterToJson(
        NestedBoolNullableFilter instance) =>
    <String, dynamic>{
      'equals': instance.equals,
      'not': instance.not?.toJson(),
    };

PromotionPlanListRelationFilter _$PromotionPlanListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    PromotionPlanListRelationFilter(
      every: json['every'] == null
          ? null
          : PromotionPlanWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : PromotionPlanWhereInput.fromJson(
              json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : PromotionPlanWhereInput.fromJson(
              json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PromotionPlanListRelationFilterToJson(
        PromotionPlanListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

PromotionPlanWhereInput _$PromotionPlanWhereInputFromJson(
        Map<String, dynamic> json) =>
    PromotionPlanWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              PromotionPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              PromotionPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) =>
              PromotionPlanWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      promotionPlanId: json['promotion_plan_id'] == null
          ? null
          : IntFilter.fromJson(
              json['promotion_plan_id'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTimeFilter.fromJson(json['created_at'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTimeFilter.fromJson(json['updated_at'] as Map<String, dynamic>),
      deletedAt: json['deleted_at'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['deleted_at'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : StringFilter.fromJson(json['title'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : StringFilter.fromJson(json['text'] as Map<String, dynamic>),
      price: json['price'] == null
          ? null
          : DecimalFilter.fromJson(json['price'] as Map<String, dynamic>),
      validityPeriod: json['validity_period'] == null
          ? null
          : IntFilter.fromJson(json['validity_period'] as Map<String, dynamic>),
      promotionRegionCid: json['promotion_region_cid'] == null
          ? null
          : IntNullableFilter.fromJson(
              json['promotion_region_cid'] as Map<String, dynamic>),
      promotionRegion: json['promotion_region'] == null
          ? null
          : CategoryRelationFilter.fromJson(
              json['promotion_region'] as Map<String, dynamic>),
      promotionPlanType: json['promotion_plan_type'] == null
          ? null
          : IntFilter.fromJson(
              json['promotion_plan_type'] as Map<String, dynamic>),
      parentPromotionPlan: json['ParentPromotionPlan'] == null
          ? null
          : PromotionPlanRelationListRelationFilter.fromJson(
              json['ParentPromotionPlan'] as Map<String, dynamic>),
      childPromotionPlan: json['ChildPromotionPlan'] == null
          ? null
          : PromotionPlanRelationListRelationFilter.fromJson(
              json['ChildPromotionPlan'] as Map<String, dynamic>),
      adPromotion: json['AdPromotion'] == null
          ? null
          : AdPromotionListRelationFilter.fromJson(
              json['AdPromotion'] as Map<String, dynamic>),
      userPromotion: json['UserPromotion'] == null
          ? null
          : UserPromotionListRelationFilter.fromJson(
              json['UserPromotion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PromotionPlanWhereInputToJson(
        PromotionPlanWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'promotion_plan_id': instance.promotionPlanId?.toJson(),
      'created_at': instance.createdAt?.toJson(),
      'updated_at': instance.updatedAt?.toJson(),
      'deleted_at': instance.deletedAt?.toJson(),
      'title': instance.title?.toJson(),
      'text': instance.text?.toJson(),
      'price': instance.price?.toJson(),
      'validity_period': instance.validityPeriod?.toJson(),
      'promotion_region_cid': instance.promotionRegionCid?.toJson(),
      'promotion_region': instance.promotionRegion?.toJson(),
      'promotion_plan_type': instance.promotionPlanType?.toJson(),
      'ParentPromotionPlan': instance.parentPromotionPlan?.toJson(),
      'ChildPromotionPlan': instance.childPromotionPlan?.toJson(),
      'AdPromotion': instance.adPromotion?.toJson(),
      'UserPromotion': instance.userPromotion?.toJson(),
    };

DecimalFilter _$DecimalFilterFromJson(Map<String, dynamic> json) =>
    DecimalFilter(
      equals: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['equals'] as String?),
      kw$in: fromGraphQLListNullableDecimalToDartListNullableDecimal(
          json['in'] as List<String>?),
      notIn: fromGraphQLListNullableDecimalToDartListNullableDecimal(
          json['notIn'] as List<String>?),
      lt: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['lt'] as String?),
      lte: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['lte'] as String?),
      gt: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['gt'] as String?),
      gte: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['gte'] as String?),
      not: json['not'] == null
          ? null
          : NestedDecimalFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecimalFilterToJson(DecimalFilter instance) =>
    <String, dynamic>{
      'equals':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.equals),
      'in': fromDartListNullableDecimalToGraphQLListNullableDecimal(
          instance.kw$in),
      'notIn': fromDartListNullableDecimalToGraphQLListNullableDecimal(
          instance.notIn),
      'lt': fromDartDecimalNullableToGraphQLDecimalNullable(instance.lt),
      'lte': fromDartDecimalNullableToGraphQLDecimalNullable(instance.lte),
      'gt': fromDartDecimalNullableToGraphQLDecimalNullable(instance.gt),
      'gte': fromDartDecimalNullableToGraphQLDecimalNullable(instance.gte),
      'not': instance.not?.toJson(),
    };

NestedDecimalFilter _$NestedDecimalFilterFromJson(Map<String, dynamic> json) =>
    NestedDecimalFilter(
      equals: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['equals'] as String?),
      kw$in: fromGraphQLListNullableDecimalToDartListNullableDecimal(
          json['in'] as List<String>?),
      notIn: fromGraphQLListNullableDecimalToDartListNullableDecimal(
          json['notIn'] as List<String>?),
      lt: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['lt'] as String?),
      lte: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['lte'] as String?),
      gt: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['gt'] as String?),
      gte: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['gte'] as String?),
      not: json['not'] == null
          ? null
          : NestedDecimalFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDecimalFilterToJson(
        NestedDecimalFilter instance) =>
    <String, dynamic>{
      'equals':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.equals),
      'in': fromDartListNullableDecimalToGraphQLListNullableDecimal(
          instance.kw$in),
      'notIn': fromDartListNullableDecimalToGraphQLListNullableDecimal(
          instance.notIn),
      'lt': fromDartDecimalNullableToGraphQLDecimalNullable(instance.lt),
      'lte': fromDartDecimalNullableToGraphQLDecimalNullable(instance.lte),
      'gt': fromDartDecimalNullableToGraphQLDecimalNullable(instance.gt),
      'gte': fromDartDecimalNullableToGraphQLDecimalNullable(instance.gte),
      'not': instance.not?.toJson(),
    };

PromotionPlanRelationListRelationFilter
    _$PromotionPlanRelationListRelationFilterFromJson(
            Map<String, dynamic> json) =>
        PromotionPlanRelationListRelationFilter(
          every: json['every'] == null
              ? null
              : PromotionPlanRelationWhereInput.fromJson(
                  json['every'] as Map<String, dynamic>),
          some: json['some'] == null
              ? null
              : PromotionPlanRelationWhereInput.fromJson(
                  json['some'] as Map<String, dynamic>),
          none: json['none'] == null
              ? null
              : PromotionPlanRelationWhereInput.fromJson(
                  json['none'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$PromotionPlanRelationListRelationFilterToJson(
        PromotionPlanRelationListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

PromotionPlanRelationWhereInput _$PromotionPlanRelationWhereInputFromJson(
        Map<String, dynamic> json) =>
    PromotionPlanRelationWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => PromotionPlanRelationWhereInput.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => PromotionPlanRelationWhereInput.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => PromotionPlanRelationWhereInput.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      parentPromotionPlanId: json['parent_promotion_plan_id'] == null
          ? null
          : IntFilter.fromJson(
              json['parent_promotion_plan_id'] as Map<String, dynamic>),
      parentPromotionPlan: json['parent_promotion_plan'] == null
          ? null
          : PromotionPlanRelationFilter.fromJson(
              json['parent_promotion_plan'] as Map<String, dynamic>),
      childPromotionPlanId: json['child_promotion_plan_id'] == null
          ? null
          : IntFilter.fromJson(
              json['child_promotion_plan_id'] as Map<String, dynamic>),
      childPromotionPlan: json['child_promotion_plan'] == null
          ? null
          : PromotionPlanRelationFilter.fromJson(
              json['child_promotion_plan'] as Map<String, dynamic>),
      count: json['count'] == null
          ? null
          : IntFilter.fromJson(json['count'] as Map<String, dynamic>),
      reccurence: json['reccurence'] == null
          ? null
          : IntFilter.fromJson(json['reccurence'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PromotionPlanRelationWhereInputToJson(
        PromotionPlanRelationWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'parent_promotion_plan_id': instance.parentPromotionPlanId?.toJson(),
      'parent_promotion_plan': instance.parentPromotionPlan?.toJson(),
      'child_promotion_plan_id': instance.childPromotionPlanId?.toJson(),
      'child_promotion_plan': instance.childPromotionPlan?.toJson(),
      'count': instance.count?.toJson(),
      'reccurence': instance.reccurence?.toJson(),
    };

PromotionPlanRelationFilter _$PromotionPlanRelationFilterFromJson(
        Map<String, dynamic> json) =>
    PromotionPlanRelationFilter(
      kw$is: json['is'] == null
          ? null
          : PromotionPlanWhereInput.fromJson(
              json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : PromotionPlanWhereInput.fromJson(
              json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PromotionPlanRelationFilterToJson(
        PromotionPlanRelationFilter instance) =>
    <String, dynamic>{
      'is': instance.kw$is?.toJson(),
      'isNot': instance.isNot?.toJson(),
    };

AdPromotionListRelationFilter _$AdPromotionListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    AdPromotionListRelationFilter(
      every: json['every'] == null
          ? null
          : AdPromotionWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : AdPromotionWhereInput.fromJson(
              json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : AdPromotionWhereInput.fromJson(
              json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdPromotionListRelationFilterToJson(
        AdPromotionListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

AdPromotionWhereInput _$AdPromotionWhereInputFromJson(
        Map<String, dynamic> json) =>
    AdPromotionWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map(
              (e) => AdPromotionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map(
              (e) => AdPromotionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map(
              (e) => AdPromotionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      promotionPlanId: json['promotion_plan_id'] == null
          ? null
          : IntFilter.fromJson(
              json['promotion_plan_id'] as Map<String, dynamic>),
      promotionPlan: json['promotion_plan'] == null
          ? null
          : PromotionPlanRelationFilter.fromJson(
              json['promotion_plan'] as Map<String, dynamic>),
      adId: json['ad_id'] == null
          ? null
          : IntFilter.fromJson(json['ad_id'] as Map<String, dynamic>),
      ad: json['ad'] == null
          ? null
          : AdRelationFilter.fromJson(json['ad'] as Map<String, dynamic>),
      userSub: json['user_sub'] == null
          ? null
          : StringFilter.fromJson(json['user_sub'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      validFrom: json['valid_from'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['valid_from'] as Map<String, dynamic>),
      validTo: json['valid_to'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['valid_to'] as Map<String, dynamic>),
      transactionId: json['transaction_id'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['transaction_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdPromotionWhereInputToJson(
        AdPromotionWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'promotion_plan_id': instance.promotionPlanId?.toJson(),
      'promotion_plan': instance.promotionPlan?.toJson(),
      'ad_id': instance.adId?.toJson(),
      'ad': instance.ad?.toJson(),
      'user_sub': instance.userSub?.toJson(),
      'user': instance.user?.toJson(),
      'valid_from': instance.validFrom?.toJson(),
      'valid_to': instance.validTo?.toJson(),
      'transaction_id': instance.transactionId?.toJson(),
    };

UserPromotionListRelationFilter _$UserPromotionListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    UserPromotionListRelationFilter(
      every: json['every'] == null
          ? null
          : UserPromotionWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : UserPromotionWhereInput.fromJson(
              json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : UserPromotionWhereInput.fromJson(
              json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserPromotionListRelationFilterToJson(
        UserPromotionListRelationFilter instance) =>
    <String, dynamic>{
      'every': instance.every?.toJson(),
      'some': instance.some?.toJson(),
      'none': instance.none?.toJson(),
    };

UserPromotionWhereInput _$UserPromotionWhereInputFromJson(
        Map<String, dynamic> json) =>
    UserPromotionWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) =>
              UserPromotionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) =>
              UserPromotionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) =>
              UserPromotionWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      promotionPlanId: json['promotion_plan_id'] == null
          ? null
          : IntFilter.fromJson(
              json['promotion_plan_id'] as Map<String, dynamic>),
      promotionPlan: json['promotion_plan'] == null
          ? null
          : PromotionPlanRelationFilter.fromJson(
              json['promotion_plan'] as Map<String, dynamic>),
      userSub: json['user_sub'] == null
          ? null
          : StringFilter.fromJson(json['user_sub'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
      validFrom: json['valid_from'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['valid_from'] as Map<String, dynamic>),
      validTo: json['valid_to'] == null
          ? null
          : DateTimeNullableFilter.fromJson(
              json['valid_to'] as Map<String, dynamic>),
      transactionId: json['transaction_id'] == null
          ? null
          : StringNullableFilter.fromJson(
              json['transaction_id'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserPromotionWhereInputToJson(
        UserPromotionWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'promotion_plan_id': instance.promotionPlanId?.toJson(),
      'promotion_plan': instance.promotionPlan?.toJson(),
      'user_sub': instance.userSub?.toJson(),
      'user': instance.user?.toJson(),
      'valid_from': instance.validFrom?.toJson(),
      'valid_to': instance.validTo?.toJson(),
      'transaction_id': instance.transactionId?.toJson(),
    };

AdAutoRelationFilter _$AdAutoRelationFilterFromJson(
        Map<String, dynamic> json) =>
    AdAutoRelationFilter(
      kw$is: json['is'] == null
          ? null
          : AdAutoWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : AdAutoWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdAutoRelationFilterToJson(
        AdAutoRelationFilter instance) =>
    <String, dynamic>{
      'is': instance.kw$is?.toJson(),
      'isNot': instance.isNot?.toJson(),
    };

AdHouseRelationFilter _$AdHouseRelationFilterFromJson(
        Map<String, dynamic> json) =>
    AdHouseRelationFilter(
      kw$is: json['is'] == null
          ? null
          : AdHouseWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : AdHouseWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdHouseRelationFilterToJson(
        AdHouseRelationFilter instance) =>
    <String, dynamic>{
      'is': instance.kw$is?.toJson(),
      'isNot': instance.isNot?.toJson(),
    };

AdHouseWhereInput _$AdHouseWhereInputFromJson(Map<String, dynamic> json) =>
    AdHouseWhereInput(
      and: (json['AND'] as List<dynamic>?)
          ?.map((e) => AdHouseWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      or: (json['OR'] as List<dynamic>?)
          ?.map((e) => AdHouseWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      not: (json['NOT'] as List<dynamic>?)
          ?.map((e) => AdHouseWhereInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      adHouseId: json['ad_house_id'] == null
          ? null
          : IntFilter.fromJson(json['ad_house_id'] as Map<String, dynamic>),
      adId: json['ad_id'] == null
          ? null
          : IntFilter.fromJson(json['ad_id'] as Map<String, dynamic>),
      ad: json['ad'] == null
          ? null
          : AdRelationFilter.fromJson(json['ad'] as Map<String, dynamic>),
      meters: json['meters'] == null
          ? null
          : IntNullableFilter.fromJson(json['meters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdHouseWhereInputToJson(AdHouseWhereInput instance) =>
    <String, dynamic>{
      'AND': instance.and?.map((e) => e.toJson()).toList(),
      'OR': instance.or?.map((e) => e.toJson()).toList(),
      'NOT': instance.not?.map((e) => e.toJson()).toList(),
      'ad_house_id': instance.adHouseId?.toJson(),
      'ad_id': instance.adId?.toJson(),
      'ad': instance.ad?.toJson(),
      'meters': instance.meters?.toJson(),
    };

DecimalNullableFilter _$DecimalNullableFilterFromJson(
        Map<String, dynamic> json) =>
    DecimalNullableFilter(
      equals: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['equals'] as String?),
      kw$in: fromGraphQLListNullableDecimalToDartListNullableDecimal(
          json['in'] as List<String>?),
      notIn: fromGraphQLListNullableDecimalToDartListNullableDecimal(
          json['notIn'] as List<String>?),
      lt: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['lt'] as String?),
      lte: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['lte'] as String?),
      gt: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['gt'] as String?),
      gte: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['gte'] as String?),
      not: json['not'] == null
          ? null
          : NestedDecimalNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DecimalNullableFilterToJson(
        DecimalNullableFilter instance) =>
    <String, dynamic>{
      'equals':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.equals),
      'in': fromDartListNullableDecimalToGraphQLListNullableDecimal(
          instance.kw$in),
      'notIn': fromDartListNullableDecimalToGraphQLListNullableDecimal(
          instance.notIn),
      'lt': fromDartDecimalNullableToGraphQLDecimalNullable(instance.lt),
      'lte': fromDartDecimalNullableToGraphQLDecimalNullable(instance.lte),
      'gt': fromDartDecimalNullableToGraphQLDecimalNullable(instance.gt),
      'gte': fromDartDecimalNullableToGraphQLDecimalNullable(instance.gte),
      'not': instance.not?.toJson(),
    };

NestedDecimalNullableFilter _$NestedDecimalNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedDecimalNullableFilter(
      equals: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['equals'] as String?),
      kw$in: fromGraphQLListNullableDecimalToDartListNullableDecimal(
          json['in'] as List<String>?),
      notIn: fromGraphQLListNullableDecimalToDartListNullableDecimal(
          json['notIn'] as List<String>?),
      lt: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['lt'] as String?),
      lte: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['lte'] as String?),
      gt: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['gt'] as String?),
      gte: fromGraphQLDecimalNullableToDartDecimalNullable(
          json['gte'] as String?),
      not: json['not'] == null
          ? null
          : NestedDecimalNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedDecimalNullableFilterToJson(
        NestedDecimalNullableFilter instance) =>
    <String, dynamic>{
      'equals':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.equals),
      'in': fromDartListNullableDecimalToGraphQLListNullableDecimal(
          instance.kw$in),
      'notIn': fromDartListNullableDecimalToGraphQLListNullableDecimal(
          instance.notIn),
      'lt': fromDartDecimalNullableToGraphQLDecimalNullable(instance.lt),
      'lte': fromDartDecimalNullableToGraphQLDecimalNullable(instance.lte),
      'gt': fromDartDecimalNullableToGraphQLDecimalNullable(instance.gt),
      'gte': fromDartDecimalNullableToGraphQLDecimalNullable(instance.gte),
      'not': instance.not?.toJson(),
    };

FindAllFilesByAdId$Query$Ad$File _$FindAllFilesByAdId$Query$Ad$FileFromJson(
        Map<String, dynamic> json) =>
    FindAllFilesByAdId$Query$Ad$File()
      ..$$typename = json['__typename'] as String?
      ..fileId = json['file_id'] as String
      ..filename = json['filename'] as String
      ..filesize = json['filesize'] as int
      ..code = json['code'] as String
      ..path = json['path'] as String;

Map<String, dynamic> _$FindAllFilesByAdId$Query$Ad$FileToJson(
        FindAllFilesByAdId$Query$Ad$File instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'file_id': instance.fileId,
      'filename': instance.filename,
      'filesize': instance.filesize,
      'code': instance.code,
      'path': instance.path,
    };

FindAllFilesByAdId$Query$Ad _$FindAllFilesByAdId$Query$AdFromJson(
        Map<String, dynamic> json) =>
    FindAllFilesByAdId$Query$Ad()
      ..adId = json['ad_id'] as String
      ..files = (json['files'] as List<dynamic>?)
          ?.map((e) => FindAllFilesByAdId$Query$Ad$File.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindAllFilesByAdId$Query$AdToJson(
        FindAllFilesByAdId$Query$Ad instance) =>
    <String, dynamic>{
      'ad_id': instance.adId,
      'files': instance.files?.map((e) => e.toJson()).toList(),
    };

FindAllFilesByAdId$Query _$FindAllFilesByAdId$QueryFromJson(
        Map<String, dynamic> json) =>
    FindAllFilesByAdId$Query()
      ..findUniqueAd = json['findUniqueAd'] == null
          ? null
          : FindAllFilesByAdId$Query$Ad.fromJson(
              json['findUniqueAd'] as Map<String, dynamic>);

Map<String, dynamic> _$FindAllFilesByAdId$QueryToJson(
        FindAllFilesByAdId$Query instance) =>
    <String, dynamic>{
      'findUniqueAd': instance.findUniqueAd?.toJson(),
    };

FindTrendingAds$Query$Ad _$FindTrendingAds$Query$AdFromJson(
        Map<String, dynamic> json) =>
    FindTrendingAds$Query$Ad()
      ..$$typename = json['__typename'] as String?
      ..adId = json['ad_id'] as String
      ..createdAt =
          fromGraphQLDateTimeToDartDateTime(json['created_at'] as String)
      ..updatedAt =
          fromGraphQLDateTimeToDartDateTime(json['updated_at'] as String)
      ..deletedAt = fromGraphQLDateTimeNullableToDartDateTimeNullable(
          json['deleted_at'] as String?)
      ..title = json['title'] as String
      ..text = json['text'] as String
      ..coordsLatitude = (json['coords_latitude'] as num?)?.toDouble()
      ..coordsLongitude = (json['coords_longitude'] as num?)?.toDouble()
      ..coordsRadius = json['coords_radius'] as int?
      ..address = json['address'] as String?
      ..priceEurocent = json['price_eurocent'] as int?
      ..priceRating = fromGraphQLDecimalNullableToDartDecimalNullable(
          json['price_rating'] as String?)
      ..files = (json['files'] as List<dynamic>?)
          ?.map((e) => AdWithAdAutoFragmentMixin$File.fromJson(
              e as Map<String, dynamic>))
          .toList()
      ..adAuto = json['ad_auto'] == null
          ? null
          : AdWithAdAutoFragmentMixin$AdAuto.fromJson(
              json['ad_auto'] as Map<String, dynamic>);

Map<String, dynamic> _$FindTrendingAds$Query$AdToJson(
        FindTrendingAds$Query$Ad instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'ad_id': instance.adId,
      'created_at': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updated_at': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'deleted_at':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.deletedAt),
      'title': instance.title,
      'text': instance.text,
      'coords_latitude': instance.coordsLatitude,
      'coords_longitude': instance.coordsLongitude,
      'coords_radius': instance.coordsRadius,
      'address': instance.address,
      'price_eurocent': instance.priceEurocent,
      'price_rating':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.priceRating),
      'files': instance.files?.map((e) => e.toJson()).toList(),
      'ad_auto': instance.adAuto?.toJson(),
    };

FindTrendingAds$Query _$FindTrendingAds$QueryFromJson(
        Map<String, dynamic> json) =>
    FindTrendingAds$Query()
      ..findAllAds = (json['findAllAds'] as List<dynamic>)
          .map((e) =>
              FindTrendingAds$Query$Ad.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindTrendingAds$QueryToJson(
        FindTrendingAds$Query instance) =>
    <String, dynamic>{
      'findAllAds': instance.findAllAds.map((e) => e.toJson()).toList(),
    };

FindAllCategories$Query$Category _$FindAllCategories$Query$CategoryFromJson(
        Map<String, dynamic> json) =>
    FindAllCategories$Query$Category()
      ..$$typename = json['__typename'] as String?
      ..categoryId = json['category_id'] as String
      ..name = json['name'] as String
      ..parentCategoryId = json['parent_category_id'] as int?
      ..code = json['code'] as String
      ..icon = json['icon'] as String?
      ..weight = json['weight'] as int?;

Map<String, dynamic> _$FindAllCategories$Query$CategoryToJson(
        FindAllCategories$Query$Category instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'category_id': instance.categoryId,
      'name': instance.name,
      'parent_category_id': instance.parentCategoryId,
      'code': instance.code,
      'icon': instance.icon,
      'weight': instance.weight,
    };

FindAllCategories$Query _$FindAllCategories$QueryFromJson(
        Map<String, dynamic> json) =>
    FindAllCategories$Query()
      ..findAllCategories = (json['findAllCategories'] as List<dynamic>)
          .map((e) => FindAllCategories$Query$Category.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindAllCategories$QueryToJson(
        FindAllCategories$Query instance) =>
    <String, dynamic>{
      'findAllCategories':
          instance.findAllCategories.map((e) => e.toJson()).toList(),
    };

FindAllCategoriesByParentId$Query$Category
    _$FindAllCategoriesByParentId$Query$CategoryFromJson(
            Map<String, dynamic> json) =>
        FindAllCategoriesByParentId$Query$Category()
          ..$$typename = json['__typename'] as String?
          ..categoryId = json['category_id'] as String
          ..name = json['name'] as String
          ..parentCategoryId = json['parent_category_id'] as int?
          ..code = json['code'] as String
          ..icon = json['icon'] as String?
          ..weight = json['weight'] as int?;

Map<String, dynamic> _$FindAllCategoriesByParentId$Query$CategoryToJson(
        FindAllCategoriesByParentId$Query$Category instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'category_id': instance.categoryId,
      'name': instance.name,
      'parent_category_id': instance.parentCategoryId,
      'code': instance.code,
      'icon': instance.icon,
      'weight': instance.weight,
    };

FindAllCategoriesByParentId$Query _$FindAllCategoriesByParentId$QueryFromJson(
        Map<String, dynamic> json) =>
    FindAllCategoriesByParentId$Query()
      ..findAllCategories = (json['findAllCategories'] as List<dynamic>)
          .map((e) => FindAllCategoriesByParentId$Query$Category.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindAllCategoriesByParentId$QueryToJson(
        FindAllCategoriesByParentId$Query instance) =>
    <String, dynamic>{
      'findAllCategories':
          instance.findAllCategories.map((e) => e.toJson()).toList(),
    };

FindCategoryByCode$Query$Category _$FindCategoryByCode$Query$CategoryFromJson(
        Map<String, dynamic> json) =>
    FindCategoryByCode$Query$Category()
      ..$$typename = json['__typename'] as String?
      ..categoryId = json['category_id'] as String
      ..name = json['name'] as String
      ..parentCategoryId = json['parent_category_id'] as int?
      ..code = json['code'] as String
      ..icon = json['icon'] as String?
      ..weight = json['weight'] as int?;

Map<String, dynamic> _$FindCategoryByCode$Query$CategoryToJson(
        FindCategoryByCode$Query$Category instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'category_id': instance.categoryId,
      'name': instance.name,
      'parent_category_id': instance.parentCategoryId,
      'code': instance.code,
      'icon': instance.icon,
      'weight': instance.weight,
    };

FindCategoryByCode$Query _$FindCategoryByCode$QueryFromJson(
        Map<String, dynamic> json) =>
    FindCategoryByCode$Query()
      ..findOneCategory = json['findOneCategory'] == null
          ? null
          : FindCategoryByCode$Query$Category.fromJson(
              json['findOneCategory'] as Map<String, dynamic>);

Map<String, dynamic> _$FindCategoryByCode$QueryToJson(
        FindCategoryByCode$Query instance) =>
    <String, dynamic>{
      'findOneCategory': instance.findOneCategory?.toJson(),
    };

FindCategoryByName$Query$Category _$FindCategoryByName$Query$CategoryFromJson(
        Map<String, dynamic> json) =>
    FindCategoryByName$Query$Category()
      ..$$typename = json['__typename'] as String?
      ..categoryId = json['category_id'] as String
      ..name = json['name'] as String
      ..parentCategoryId = json['parent_category_id'] as int?
      ..code = json['code'] as String
      ..icon = json['icon'] as String?
      ..weight = json['weight'] as int?;

Map<String, dynamic> _$FindCategoryByName$Query$CategoryToJson(
        FindCategoryByName$Query$Category instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'category_id': instance.categoryId,
      'name': instance.name,
      'parent_category_id': instance.parentCategoryId,
      'code': instance.code,
      'icon': instance.icon,
      'weight': instance.weight,
    };

FindCategoryByName$Query _$FindCategoryByName$QueryFromJson(
        Map<String, dynamic> json) =>
    FindCategoryByName$Query()
      ..findOneCategory = json['findOneCategory'] == null
          ? null
          : FindCategoryByName$Query$Category.fromJson(
              json['findOneCategory'] as Map<String, dynamic>);

Map<String, dynamic> _$FindCategoryByName$QueryToJson(
        FindCategoryByName$Query instance) =>
    <String, dynamic>{
      'findOneCategory': instance.findOneCategory?.toJson(),
    };

AddToFavorites$Mutation$ListAd _$AddToFavorites$Mutation$ListAdFromJson(
        Map<String, dynamic> json) =>
    AddToFavorites$Mutation$ListAd()..adId = json['ad_id'] as int;

Map<String, dynamic> _$AddToFavorites$Mutation$ListAdToJson(
        AddToFavorites$Mutation$ListAd instance) =>
    <String, dynamic>{
      'ad_id': instance.adId,
    };

AddToFavorites$Mutation _$AddToFavorites$MutationFromJson(
        Map<String, dynamic> json) =>
    AddToFavorites$Mutation()
      ..addToFavorites = json['addToFavorites'] == null
          ? null
          : AddToFavorites$Mutation$ListAd.fromJson(
              json['addToFavorites'] as Map<String, dynamic>);

Map<String, dynamic> _$AddToFavorites$MutationToJson(
        AddToFavorites$Mutation instance) =>
    <String, dynamic>{
      'addToFavorites': instance.addToFavorites?.toJson(),
    };

CreateList$Mutation$List _$CreateList$Mutation$ListFromJson(
        Map<String, dynamic> json) =>
    CreateList$Mutation$List()
      ..listId = json['list_id'] as String
      ..listType = json['list_type'] as int
      ..title = json['title'] as String;

Map<String, dynamic> _$CreateList$Mutation$ListToJson(
        CreateList$Mutation$List instance) =>
    <String, dynamic>{
      'list_id': instance.listId,
      'list_type': instance.listType,
      'title': instance.title,
    };

CreateList$Mutation _$CreateList$MutationFromJson(Map<String, dynamic> json) =>
    CreateList$Mutation()
      ..createList = CreateList$Mutation$List.fromJson(
          json['createList'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateList$MutationToJson(
        CreateList$Mutation instance) =>
    <String, dynamic>{
      'createList': instance.createList.toJson(),
    };

CreateListAd$Mutation$ListAd _$CreateListAd$Mutation$ListAdFromJson(
        Map<String, dynamic> json) =>
    CreateListAd$Mutation$ListAd()..adId = json['ad_id'] as int;

Map<String, dynamic> _$CreateListAd$Mutation$ListAdToJson(
        CreateListAd$Mutation$ListAd instance) =>
    <String, dynamic>{
      'ad_id': instance.adId,
    };

CreateListAd$Mutation _$CreateListAd$MutationFromJson(
        Map<String, dynamic> json) =>
    CreateListAd$Mutation()
      ..createListAd = json['createListAd'] == null
          ? null
          : CreateListAd$Mutation$ListAd.fromJson(
              json['createListAd'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateListAd$MutationToJson(
        CreateListAd$Mutation instance) =>
    <String, dynamic>{
      'createListAd': instance.createListAd?.toJson(),
    };

FindAllLists$Query$List _$FindAllLists$Query$ListFromJson(
        Map<String, dynamic> json) =>
    FindAllLists$Query$List()
      ..listId = json['list_id'] as String
      ..listType = json['list_type'] as int
      ..title = json['title'] as String;

Map<String, dynamic> _$FindAllLists$Query$ListToJson(
        FindAllLists$Query$List instance) =>
    <String, dynamic>{
      'list_id': instance.listId,
      'list_type': instance.listType,
      'title': instance.title,
    };

FindAllLists$Query _$FindAllLists$QueryFromJson(Map<String, dynamic> json) =>
    FindAllLists$Query()
      ..findMyLists = (json['findMyLists'] as List<dynamic>)
          .map((e) =>
              FindAllLists$Query$List.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindAllLists$QueryToJson(FindAllLists$Query instance) =>
    <String, dynamic>{
      'findMyLists': instance.findMyLists.map((e) => e.toJson()).toList(),
    };

FindAllListsByListType$Query$List _$FindAllListsByListType$Query$ListFromJson(
        Map<String, dynamic> json) =>
    FindAllListsByListType$Query$List()
      ..listId = json['list_id'] as String
      ..listType = json['list_type'] as int
      ..title = json['title'] as String
      ..searchParams = json['search_params'] as String;

Map<String, dynamic> _$FindAllListsByListType$Query$ListToJson(
        FindAllListsByListType$Query$List instance) =>
    <String, dynamic>{
      'list_id': instance.listId,
      'list_type': instance.listType,
      'title': instance.title,
      'search_params': instance.searchParams,
    };

FindAllListsByListType$Query _$FindAllListsByListType$QueryFromJson(
        Map<String, dynamic> json) =>
    FindAllListsByListType$Query()
      ..findMyLists = (json['findMyLists'] as List<dynamic>)
          .map((e) => FindAllListsByListType$Query$List.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindAllListsByListType$QueryToJson(
        FindAllListsByListType$Query instance) =>
    <String, dynamic>{
      'findMyLists': instance.findMyLists.map((e) => e.toJson()).toList(),
    };

FindFavoriteAdsList$Query$List$ListAd$Ad
    _$FindFavoriteAdsList$Query$List$ListAd$AdFromJson(
            Map<String, dynamic> json) =>
        FindFavoriteAdsList$Query$List$ListAd$Ad()
          ..adId = json['ad_id'] as String;

Map<String, dynamic> _$FindFavoriteAdsList$Query$List$ListAd$AdToJson(
        FindFavoriteAdsList$Query$List$ListAd$Ad instance) =>
    <String, dynamic>{
      'ad_id': instance.adId,
    };

FindFavoriteAdsList$Query$List$ListAd
    _$FindFavoriteAdsList$Query$List$ListAdFromJson(
            Map<String, dynamic> json) =>
        FindFavoriteAdsList$Query$List$ListAd()
          ..ad = FindFavoriteAdsList$Query$List$ListAd$Ad.fromJson(
              json['ad'] as Map<String, dynamic>);

Map<String, dynamic> _$FindFavoriteAdsList$Query$List$ListAdToJson(
        FindFavoriteAdsList$Query$List$ListAd instance) =>
    <String, dynamic>{
      'ad': instance.ad.toJson(),
    };

FindFavoriteAdsList$Query$List _$FindFavoriteAdsList$Query$ListFromJson(
        Map<String, dynamic> json) =>
    FindFavoriteAdsList$Query$List()
      ..listId = json['list_id'] as String
      ..listAd = (json['ListAd'] as List<dynamic>?)
          ?.map((e) => FindFavoriteAdsList$Query$List$ListAd.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindFavoriteAdsList$Query$ListToJson(
        FindFavoriteAdsList$Query$List instance) =>
    <String, dynamic>{
      'list_id': instance.listId,
      'ListAd': instance.listAd?.map((e) => e.toJson()).toList(),
    };

FindFavoriteAdsList$Query _$FindFavoriteAdsList$QueryFromJson(
        Map<String, dynamic> json) =>
    FindFavoriteAdsList$Query()
      ..findOneList = json['findOneList'] == null
          ? null
          : FindFavoriteAdsList$Query$List.fromJson(
              json['findOneList'] as Map<String, dynamic>);

Map<String, dynamic> _$FindFavoriteAdsList$QueryToJson(
        FindFavoriteAdsList$Query instance) =>
    <String, dynamic>{
      'findOneList': instance.findOneList?.toJson(),
    };

FindListWithAdsByListId$Query$List$ListAd$Ad
    _$FindListWithAdsByListId$Query$List$ListAd$AdFromJson(
            Map<String, dynamic> json) =>
        FindListWithAdsByListId$Query$List$ListAd$Ad()
          ..$$typename = json['__typename'] as String?
          ..adId = json['ad_id'] as String
          ..createdAt =
              fromGraphQLDateTimeToDartDateTime(json['created_at'] as String)
          ..updatedAt =
              fromGraphQLDateTimeToDartDateTime(json['updated_at'] as String)
          ..deletedAt = fromGraphQLDateTimeNullableToDartDateTimeNullable(
              json['deleted_at'] as String?)
          ..title = json['title'] as String
          ..text = json['text'] as String
          ..coordsLatitude = (json['coords_latitude'] as num?)?.toDouble()
          ..coordsLongitude = (json['coords_longitude'] as num?)?.toDouble()
          ..coordsRadius = json['coords_radius'] as int?
          ..address = json['address'] as String?
          ..priceEurocent = json['price_eurocent'] as int?
          ..priceRating = fromGraphQLDecimalNullableToDartDecimalNullable(
              json['price_rating'] as String?)
          ..files = (json['files'] as List<dynamic>?)
              ?.map((e) => AdWithAdAutoFragmentMixin$File.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..adAuto = json['ad_auto'] == null
              ? null
              : AdWithAdAutoFragmentMixin$AdAuto.fromJson(
                  json['ad_auto'] as Map<String, dynamic>);

Map<String, dynamic> _$FindListWithAdsByListId$Query$List$ListAd$AdToJson(
        FindListWithAdsByListId$Query$List$ListAd$Ad instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'ad_id': instance.adId,
      'created_at': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updated_at': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'deleted_at':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.deletedAt),
      'title': instance.title,
      'text': instance.text,
      'coords_latitude': instance.coordsLatitude,
      'coords_longitude': instance.coordsLongitude,
      'coords_radius': instance.coordsRadius,
      'address': instance.address,
      'price_eurocent': instance.priceEurocent,
      'price_rating':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.priceRating),
      'files': instance.files?.map((e) => e.toJson()).toList(),
      'ad_auto': instance.adAuto?.toJson(),
    };

FindListWithAdsByListId$Query$List$ListAd
    _$FindListWithAdsByListId$Query$List$ListAdFromJson(
            Map<String, dynamic> json) =>
        FindListWithAdsByListId$Query$List$ListAd()
          ..adId = json['ad_id'] as int
          ..ad = FindListWithAdsByListId$Query$List$ListAd$Ad.fromJson(
              json['ad'] as Map<String, dynamic>);

Map<String, dynamic> _$FindListWithAdsByListId$Query$List$ListAdToJson(
        FindListWithAdsByListId$Query$List$ListAd instance) =>
    <String, dynamic>{
      'ad_id': instance.adId,
      'ad': instance.ad.toJson(),
    };

FindListWithAdsByListId$Query$List _$FindListWithAdsByListId$Query$ListFromJson(
        Map<String, dynamic> json) =>
    FindListWithAdsByListId$Query$List()
      ..listId = json['list_id'] as String
      ..listType = json['list_type'] as int
      ..title = json['title'] as String
      ..listAd = (json['ListAd'] as List<dynamic>?)
          ?.map((e) => FindListWithAdsByListId$Query$List$ListAd.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$FindListWithAdsByListId$Query$ListToJson(
        FindListWithAdsByListId$Query$List instance) =>
    <String, dynamic>{
      'list_id': instance.listId,
      'list_type': instance.listType,
      'title': instance.title,
      'ListAd': instance.listAd?.map((e) => e.toJson()).toList(),
    };

FindListWithAdsByListId$Query _$FindListWithAdsByListId$QueryFromJson(
        Map<String, dynamic> json) =>
    FindListWithAdsByListId$Query()
      ..findOneList = json['findOneList'] == null
          ? null
          : FindListWithAdsByListId$Query$List.fromJson(
              json['findOneList'] as Map<String, dynamic>);

Map<String, dynamic> _$FindListWithAdsByListId$QueryToJson(
        FindListWithAdsByListId$Query instance) =>
    <String, dynamic>{
      'findOneList': instance.findOneList?.toJson(),
    };

FindListWithAdsByListType$Query$List$ListAd$Ad
    _$FindListWithAdsByListType$Query$List$ListAd$AdFromJson(
            Map<String, dynamic> json) =>
        FindListWithAdsByListType$Query$List$ListAd$Ad()
          ..$$typename = json['__typename'] as String?
          ..adId = json['ad_id'] as String
          ..createdAt =
              fromGraphQLDateTimeToDartDateTime(json['created_at'] as String)
          ..updatedAt =
              fromGraphQLDateTimeToDartDateTime(json['updated_at'] as String)
          ..deletedAt = fromGraphQLDateTimeNullableToDartDateTimeNullable(
              json['deleted_at'] as String?)
          ..title = json['title'] as String
          ..text = json['text'] as String
          ..coordsLatitude = (json['coords_latitude'] as num?)?.toDouble()
          ..coordsLongitude = (json['coords_longitude'] as num?)?.toDouble()
          ..coordsRadius = json['coords_radius'] as int?
          ..address = json['address'] as String?
          ..priceEurocent = json['price_eurocent'] as int?
          ..priceRating = fromGraphQLDecimalNullableToDartDecimalNullable(
              json['price_rating'] as String?)
          ..files = (json['files'] as List<dynamic>?)
              ?.map((e) => AdWithAdAutoFragmentMixin$File.fromJson(
                  e as Map<String, dynamic>))
              .toList()
          ..adAuto = json['ad_auto'] == null
              ? null
              : AdWithAdAutoFragmentMixin$AdAuto.fromJson(
                  json['ad_auto'] as Map<String, dynamic>);

Map<String, dynamic> _$FindListWithAdsByListType$Query$List$ListAd$AdToJson(
        FindListWithAdsByListType$Query$List$ListAd$Ad instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'ad_id': instance.adId,
      'created_at': fromDartDateTimeToGraphQLDateTime(instance.createdAt),
      'updated_at': fromDartDateTimeToGraphQLDateTime(instance.updatedAt),
      'deleted_at':
          fromDartDateTimeNullableToGraphQLDateTimeNullable(instance.deletedAt),
      'title': instance.title,
      'text': instance.text,
      'coords_latitude': instance.coordsLatitude,
      'coords_longitude': instance.coordsLongitude,
      'coords_radius': instance.coordsRadius,
      'address': instance.address,
      'price_eurocent': instance.priceEurocent,
      'price_rating':
          fromDartDecimalNullableToGraphQLDecimalNullable(instance.priceRating),
      'files': instance.files?.map((e) => e.toJson()).toList(),
      'ad_auto': instance.adAuto?.toJson(),
    };

FindListWithAdsByListType$Query$List$ListAd
    _$FindListWithAdsByListType$Query$List$ListAdFromJson(
            Map<String, dynamic> json) =>
        FindListWithAdsByListType$Query$List$ListAd()
          ..adId = json['ad_id'] as int
          ..ad = FindListWithAdsByListType$Query$List$ListAd$Ad.fromJson(
              json['ad'] as Map<String, dynamic>);

Map<String, dynamic> _$FindListWithAdsByListType$Query$List$ListAdToJson(
        FindListWithAdsByListType$Query$List$ListAd instance) =>
    <String, dynamic>{
      'ad_id': instance.adId,
      'ad': instance.ad.toJson(),
    };

FindListWithAdsByListType$Query$List
    _$FindListWithAdsByListType$Query$ListFromJson(Map<String, dynamic> json) =>
        FindListWithAdsByListType$Query$List()
          ..listId = json['list_id'] as String
          ..listType = json['list_type'] as int
          ..title = json['title'] as String
          ..listAd = (json['ListAd'] as List<dynamic>?)
              ?.map((e) => FindListWithAdsByListType$Query$List$ListAd.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$FindListWithAdsByListType$Query$ListToJson(
        FindListWithAdsByListType$Query$List instance) =>
    <String, dynamic>{
      'list_id': instance.listId,
      'list_type': instance.listType,
      'title': instance.title,
      'ListAd': instance.listAd?.map((e) => e.toJson()).toList(),
    };

FindListWithAdsByListType$Query _$FindListWithAdsByListType$QueryFromJson(
        Map<String, dynamic> json) =>
    FindListWithAdsByListType$Query()
      ..findOneList = json['findOneList'] == null
          ? null
          : FindListWithAdsByListType$Query$List.fromJson(
              json['findOneList'] as Map<String, dynamic>);

Map<String, dynamic> _$FindListWithAdsByListType$QueryToJson(
        FindListWithAdsByListType$Query instance) =>
    <String, dynamic>{
      'findOneList': instance.findOneList?.toJson(),
    };

RemoveFromList$Mutation$ListAd _$RemoveFromList$Mutation$ListAdFromJson(
        Map<String, dynamic> json) =>
    RemoveFromList$Mutation$ListAd()..adId = json['ad_id'] as int;

Map<String, dynamic> _$RemoveFromList$Mutation$ListAdToJson(
        RemoveFromList$Mutation$ListAd instance) =>
    <String, dynamic>{
      'ad_id': instance.adId,
    };

RemoveFromList$Mutation _$RemoveFromList$MutationFromJson(
        Map<String, dynamic> json) =>
    RemoveFromList$Mutation()
      ..removeListAd = json['removeListAd'] == null
          ? null
          : RemoveFromList$Mutation$ListAd.fromJson(
              json['removeListAd'] as Map<String, dynamic>);

Map<String, dynamic> _$RemoveFromList$MutationToJson(
        RemoveFromList$Mutation instance) =>
    <String, dynamic>{
      'removeListAd': instance.removeListAd?.toJson(),
    };

RemoveList$Mutation _$RemoveList$MutationFromJson(Map<String, dynamic> json) =>
    RemoveList$Mutation()..removeList = json['removeList'] as int?;

Map<String, dynamic> _$RemoveList$MutationToJson(
        RemoveList$Mutation instance) =>
    <String, dynamic>{
      'removeList': instance.removeList,
    };

CreateNewAdArguments _$CreateNewAdArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateNewAdArguments(
      title: json['title'] as String,
      text: json['text'] as String,
      price: json['price'] as int?,
      year: json['year'] as int,
      km: json['km'] as int?,
      power_kw: json['power_kw'] as int?,
      path: json['path'] as String,
      filename: json['filename'] as String,
      code: json['code'] as String,
      filesize: json['filesize'] as int,
      brand_id: json['brand_id'] as int?,
      model_id: json['model_id'] as int?,
      variant_id: json['variant_id'] as int?,
      bodyType_id: json['bodyType_id'] as int?,
      condition_id: json['condition_id'] as int?,
      fuelType_id: json['fuelType_id'] as int?,
      transmission_id: json['transmission_id'] as int?,
    );

Map<String, dynamic> _$CreateNewAdArgumentsToJson(
        CreateNewAdArguments instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'price': instance.price,
      'year': instance.year,
      'km': instance.km,
      'power_kw': instance.power_kw,
      'path': instance.path,
      'filename': instance.filename,
      'code': instance.code,
      'filesize': instance.filesize,
      'brand_id': instance.brand_id,
      'model_id': instance.model_id,
      'variant_id': instance.variant_id,
      'bodyType_id': instance.bodyType_id,
      'condition_id': instance.condition_id,
      'fuelType_id': instance.fuelType_id,
      'transmission_id': instance.transmission_id,
    };

FindAllAdsFilterArguments _$FindAllAdsFilterArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindAllAdsFilterArguments(
      minimum_price: json['minimum_price'] as int?,
      maximum_price: json['maximum_price'] as int?,
      AdAutoConditionType: json['AdAutoConditionType'] as int?,
      AdAutoFuelType: json['AdAutoFuelType'] as int?,
      AdAutoMakeType: json['AdAutoMakeType'] as int?,
      AdAutoTransmissionType: json['AdAutoTransmissionType'] as int?,
      AdAutoBodyType: json['AdAutoBodyType'] as int?,
      AdAutoVehicleType: json['AdAutoVehicleType'] as int?,
      AdAutoModel: json['AdAutoModel'] as int?,
      AdAutoVariant: json['AdAutoVariant'] as int?,
      order: (json['order'] as List<dynamic>?)
          ?.map((e) =>
              AdOrderByWithRelationInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FindAllAdsFilterArgumentsToJson(
        FindAllAdsFilterArguments instance) =>
    <String, dynamic>{
      'minimum_price': instance.minimum_price,
      'maximum_price': instance.maximum_price,
      'AdAutoConditionType': instance.AdAutoConditionType,
      'AdAutoFuelType': instance.AdAutoFuelType,
      'AdAutoMakeType': instance.AdAutoMakeType,
      'AdAutoTransmissionType': instance.AdAutoTransmissionType,
      'AdAutoBodyType': instance.AdAutoBodyType,
      'AdAutoVehicleType': instance.AdAutoVehicleType,
      'AdAutoModel': instance.AdAutoModel,
      'AdAutoVariant': instance.AdAutoVariant,
      'order': instance.order?.map((e) => e.toJson()).toList(),
    };

FindAllAdsMyAdsArguments _$FindAllAdsMyAdsArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindAllAdsMyAdsArguments(
      userSub: json['userSub'] as String?,
      isSold: json['isSold'] as bool?,
    );

Map<String, dynamic> _$FindAllAdsMyAdsArgumentsToJson(
        FindAllAdsMyAdsArguments instance) =>
    <String, dynamic>{
      'userSub': instance.userSub,
      'isSold': instance.isSold,
    };

FindAllAdsWhereArguments _$FindAllAdsWhereArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindAllAdsWhereArguments(
      where: json['where'] == null
          ? null
          : AdWhereInput.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FindAllAdsWhereArgumentsToJson(
        FindAllAdsWhereArguments instance) =>
    <String, dynamic>{
      'where': instance.where?.toJson(),
    };

FindAllFilesByAdIdArguments _$FindAllFilesByAdIdArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindAllFilesByAdIdArguments(
      ad_id: json['ad_id'] as int,
    );

Map<String, dynamic> _$FindAllFilesByAdIdArgumentsToJson(
        FindAllFilesByAdIdArguments instance) =>
    <String, dynamic>{
      'ad_id': instance.ad_id,
    };

FindAllCategoriesByParentIdArguments
    _$FindAllCategoriesByParentIdArgumentsFromJson(Map<String, dynamic> json) =>
        FindAllCategoriesByParentIdArguments(
          parent_category_id: json['parent_category_id'] as int?,
        );

Map<String, dynamic> _$FindAllCategoriesByParentIdArgumentsToJson(
        FindAllCategoriesByParentIdArguments instance) =>
    <String, dynamic>{
      'parent_category_id': instance.parent_category_id,
    };

FindCategoryByCodeArguments _$FindCategoryByCodeArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindCategoryByCodeArguments(
      code: json['code'] as String?,
    );

Map<String, dynamic> _$FindCategoryByCodeArgumentsToJson(
        FindCategoryByCodeArguments instance) =>
    <String, dynamic>{
      'code': instance.code,
    };

FindCategoryByNameArguments _$FindCategoryByNameArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindCategoryByNameArguments(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$FindCategoryByNameArgumentsToJson(
        FindCategoryByNameArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

AddToFavoritesArguments _$AddToFavoritesArgumentsFromJson(
        Map<String, dynamic> json) =>
    AddToFavoritesArguments(
      ad_id: json['ad_id'] as int?,
    );

Map<String, dynamic> _$AddToFavoritesArgumentsToJson(
        AddToFavoritesArguments instance) =>
    <String, dynamic>{
      'ad_id': instance.ad_id,
    };

CreateListArguments _$CreateListArgumentsFromJson(Map<String, dynamic> json) =>
    CreateListArguments(
      list_type: json['list_type'] as int?,
      title: json['title'] as String,
      search_params:
          fromGraphQLJsonToDartString(json['search_params'] as String),
      user_sub: json['user_sub'] as String?,
    );

Map<String, dynamic> _$CreateListArgumentsToJson(
        CreateListArguments instance) =>
    <String, dynamic>{
      'list_type': instance.list_type,
      'title': instance.title,
      'search_params': fromDartStringToGraphQLJson(instance.search_params),
      'user_sub': instance.user_sub,
    };

CreateListAdArguments _$CreateListAdArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateListAdArguments(
      list_id: json['list_id'] as int?,
      ad_id: json['ad_id'] as int?,
    );

Map<String, dynamic> _$CreateListAdArgumentsToJson(
        CreateListAdArguments instance) =>
    <String, dynamic>{
      'list_id': instance.list_id,
      'ad_id': instance.ad_id,
    };

FindAllListsByListTypeArguments _$FindAllListsByListTypeArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindAllListsByListTypeArguments(
      list_type: json['list_type'] as int?,
    );

Map<String, dynamic> _$FindAllListsByListTypeArgumentsToJson(
        FindAllListsByListTypeArguments instance) =>
    <String, dynamic>{
      'list_type': instance.list_type,
    };

FindFavoriteAdsListArguments _$FindFavoriteAdsListArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindFavoriteAdsListArguments(
      list_type: json['list_type'] as int?,
    );

Map<String, dynamic> _$FindFavoriteAdsListArgumentsToJson(
        FindFavoriteAdsListArguments instance) =>
    <String, dynamic>{
      'list_type': instance.list_type,
    };

FindListWithAdsByListIdArguments _$FindListWithAdsByListIdArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindListWithAdsByListIdArguments(
      list_id: json['list_id'] as int?,
    );

Map<String, dynamic> _$FindListWithAdsByListIdArgumentsToJson(
        FindListWithAdsByListIdArguments instance) =>
    <String, dynamic>{
      'list_id': instance.list_id,
    };

FindListWithAdsByListTypeArguments _$FindListWithAdsByListTypeArgumentsFromJson(
        Map<String, dynamic> json) =>
    FindListWithAdsByListTypeArguments(
      list_type: json['list_type'] as int?,
    );

Map<String, dynamic> _$FindListWithAdsByListTypeArgumentsToJson(
        FindListWithAdsByListTypeArguments instance) =>
    <String, dynamic>{
      'list_type': instance.list_type,
    };

RemoveFromListArguments _$RemoveFromListArgumentsFromJson(
        Map<String, dynamic> json) =>
    RemoveFromListArguments(
      ad_id: json['ad_id'] as int,
      list_id: json['list_id'] as int,
    );

Map<String, dynamic> _$RemoveFromListArgumentsToJson(
        RemoveFromListArguments instance) =>
    <String, dynamic>{
      'ad_id': instance.ad_id,
      'list_id': instance.list_id,
    };

RemoveListArguments _$RemoveListArgumentsFromJson(Map<String, dynamic> json) =>
    RemoveListArguments(
      list_id: json['list_id'] as int,
    );

Map<String, dynamic> _$RemoveListArgumentsToJson(
        RemoveListArguments instance) =>
    <String, dynamic>{
      'list_id': instance.list_id,
    };
