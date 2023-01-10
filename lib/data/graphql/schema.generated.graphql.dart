// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12
// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, prefer_const_declarations, prefer_const_constructors, prefer_const_literals_to_create_immutables, overridden_fields

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import '../../utils/coercers.dart';
import 'package:decimal/decimal.dart';
part 'schema.generated.graphql.g.dart';

mixin AdWithAdAutoFragmentMixin {
  @JsonKey(name: '__typename')
  String? $$typename;
  @JsonKey(name: 'ad_id')
  late String adId;
  @JsonKey(
      name: 'created_at',
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime createdAt;
  @JsonKey(
      name: 'updated_at',
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime updatedAt;
  @JsonKey(
      name: 'deleted_at',
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? deletedAt;
  late String title;
  late String text;
  @JsonKey(name: 'coords_latitude')
  double? coordsLatitude;
  @JsonKey(name: 'coords_longitude')
  double? coordsLongitude;
  @JsonKey(name: 'coords_radius')
  int? coordsRadius;
  String? address;
  @JsonKey(name: 'price_eurocent')
  int? priceEurocent;
  @JsonKey(
      name: 'price_rating',
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? priceRating;
  List<AdWithAdAutoFragmentMixin$File>? files;
  @JsonKey(name: 'ad_auto')
  AdWithAdAutoFragmentMixin$AdAuto? adAuto;
}
mixin AdAutoFragmentMixin {
  @JsonKey(name: '__typename')
  String? $$typename;
  @JsonKey(name: 'condition_type_cid')
  int? conditionTypeCid;
  @JsonKey(name: 'vehicle_type_cid')
  int? vehicleTypeCid;
  @JsonKey(name: 'fuel_type_cid')
  int? fuelTypeCid;
  @JsonKey(name: 'transmission_type_cid')
  int? transmissionTypeCid;
  @JsonKey(name: 'make_cid')
  int? makeCid;
  @JsonKey(name: 'model_cid')
  int? modelCid;
  late int year;
  int? km;
  @JsonKey(name: 'power_kw')
  int? powerKw;
  @JsonKey(name: 'body_type_cid')
  int? bodyTypeCid;
  @JsonKey(name: 'variant_cid')
  int? variantCid;
  @JsonKey(
      name: 'registered_until',
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? registeredUntil;
  @JsonKey(name: 'doors_num')
  int? doorsNum;
  @JsonKey(name: 'seats_num')
  int? seatsNum;
  @JsonKey(name: 'is_first_owner')
  bool? isFirstOwner;
  @JsonKey(name: 'is_service_book_available')
  bool? isServiceBookAvailable;
  @JsonKey(name: 'is_vehicle_garaged')
  bool? isVehicleGaraged;
  @JsonKey(name: 'engine_displacement_cm3')
  int? engineDisplacementCm3;
  @JsonKey(name: 'emission_class_cid')
  int? emissionClassCid;
  @JsonKey(name: 'battery_capacity_kwh')
  int? batteryCapacityKwh;
  @JsonKey(name: 'conditioning_cid')
  int? conditioningCid;
  @JsonKey(name: 'color_exterior_cid')
  int? colorExteriorCid;
  @JsonKey(name: 'color_interior_cid')
  int? colorInteriorCid;
}
mixin FileFragmentMixin {
  @JsonKey(name: '__typename')
  String? $$typename;
  @JsonKey(name: 'file_id')
  late String fileId;
  late String filename;
  late int filesize;
  late String code;
  late String path;
}
mixin CategoryFragmentMixin {
  @JsonKey(name: '__typename')
  String? $$typename;
  @JsonKey(name: 'category_id')
  late String categoryId;
  late String name;
  @JsonKey(name: 'parent_category_id')
  int? parentCategoryId;
  late String code;
  String? icon;
  int? weight;
}

@JsonSerializable(explicitToJson: true)
class CreateNewAd$Mutation$Ad$AdAuto extends JsonSerializable
    with EquatableMixin {
  CreateNewAd$Mutation$Ad$AdAuto();

  factory CreateNewAd$Mutation$Ad$AdAuto.fromJson(Map<String, dynamic> json) =>
      _$CreateNewAd$Mutation$Ad$AdAutoFromJson(json);

  @JsonKey(name: 'condition_type_cid')
  int? conditionTypeCid;

  @JsonKey(name: 'vehicle_type_cid')
  int? vehicleTypeCid;

  @JsonKey(name: 'fuel_type_cid')
  int? fuelTypeCid;

  @JsonKey(name: 'transmission_type_cid')
  int? transmissionTypeCid;

  @JsonKey(name: 'make_cid')
  int? makeCid;

  @JsonKey(name: 'model_cid')
  int? modelCid;

  late int year;

  int? km;

  @JsonKey(name: 'power_kw')
  int? powerKw;

  @override
  List<Object?> get props => [
        conditionTypeCid,
        vehicleTypeCid,
        fuelTypeCid,
        transmissionTypeCid,
        makeCid,
        modelCid,
        year,
        km,
        powerKw
      ];
  @override
  Map<String, dynamic> toJson() => _$CreateNewAd$Mutation$Ad$AdAutoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateNewAd$Mutation$Ad$File extends JsonSerializable
    with EquatableMixin {
  CreateNewAd$Mutation$Ad$File();

  factory CreateNewAd$Mutation$Ad$File.fromJson(Map<String, dynamic> json) =>
      _$CreateNewAd$Mutation$Ad$FileFromJson(json);

  @JsonKey(name: 'file_id')
  late String fileId;

  late String filename;

  late int filesize;

  late String code;

  late String path;

  @override
  List<Object?> get props => [fileId, filename, filesize, code, path];
  @override
  Map<String, dynamic> toJson() => _$CreateNewAd$Mutation$Ad$FileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateNewAd$Mutation$Ad extends JsonSerializable with EquatableMixin {
  CreateNewAd$Mutation$Ad();

  factory CreateNewAd$Mutation$Ad.fromJson(Map<String, dynamic> json) =>
      _$CreateNewAd$Mutation$AdFromJson(json);

  @JsonKey(name: 'ad_id')
  late String adId;

  @JsonKey(
      name: 'created_at',
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime createdAt;

  @JsonKey(
      name: 'updated_at',
      fromJson: fromGraphQLDateTimeToDartDateTime,
      toJson: fromDartDateTimeToGraphQLDateTime)
  late DateTime updatedAt;

  @JsonKey(
      name: 'deleted_at',
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? deletedAt;

  late String title;

  late String text;

  @JsonKey(name: 'coords_latitude')
  double? coordsLatitude;

  @JsonKey(name: 'coords_longitude')
  double? coordsLongitude;

  @JsonKey(name: 'coords_radius')
  int? coordsRadius;

  String? address;

  @JsonKey(name: 'price_eurocent')
  int? priceEurocent;

  @JsonKey(name: 'ad_auto')
  CreateNewAd$Mutation$Ad$AdAuto? adAuto;

  List<CreateNewAd$Mutation$Ad$File>? files;

  @override
  List<Object?> get props => [
        adId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        coordsLatitude,
        coordsLongitude,
        coordsRadius,
        address,
        priceEurocent,
        adAuto,
        files
      ];
  @override
  Map<String, dynamic> toJson() => _$CreateNewAd$Mutation$AdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateNewAd$Mutation extends JsonSerializable with EquatableMixin {
  CreateNewAd$Mutation();

  factory CreateNewAd$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateNewAd$MutationFromJson(json);

  late CreateNewAd$Mutation$Ad createAd;

  @override
  List<Object?> get props => [createAd];
  @override
  Map<String, dynamic> toJson() => _$CreateNewAd$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllAds$Query$Ad extends JsonSerializable
    with EquatableMixin, AdWithAdAutoFragmentMixin {
  FindAllAds$Query$Ad();

  factory FindAllAds$Query$Ad.fromJson(Map<String, dynamic> json) =>
      _$FindAllAds$Query$AdFromJson(json);

  @override
  List<Object?> get props => [
        $$typename,
        adId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        coordsLatitude,
        coordsLongitude,
        coordsRadius,
        address,
        priceEurocent,
        priceRating,
        files,
        adAuto
      ];
  @override
  Map<String, dynamic> toJson() => _$FindAllAds$Query$AdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllAds$Query extends JsonSerializable with EquatableMixin {
  FindAllAds$Query();

  factory FindAllAds$Query.fromJson(Map<String, dynamic> json) =>
      _$FindAllAds$QueryFromJson(json);

  late List<FindAllAds$Query$Ad> findAllAds;

  @override
  List<Object?> get props => [findAllAds];
  @override
  Map<String, dynamic> toJson() => _$FindAllAds$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdWithAdAutoFragmentMixin$File extends JsonSerializable
    with EquatableMixin {
  AdWithAdAutoFragmentMixin$File();

  factory AdWithAdAutoFragmentMixin$File.fromJson(Map<String, dynamic> json) =>
      _$AdWithAdAutoFragmentMixin$FileFromJson(json);

  late String path;

  @override
  List<Object?> get props => [path];
  @override
  Map<String, dynamic> toJson() => _$AdWithAdAutoFragmentMixin$FileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdWithAdAutoFragmentMixin$AdAuto extends JsonSerializable
    with EquatableMixin, AdAutoFragmentMixin {
  AdWithAdAutoFragmentMixin$AdAuto();

  factory AdWithAdAutoFragmentMixin$AdAuto.fromJson(
          Map<String, dynamic> json) =>
      _$AdWithAdAutoFragmentMixin$AdAutoFromJson(json);

  @override
  List<Object?> get props => [
        $$typename,
        conditionTypeCid,
        vehicleTypeCid,
        fuelTypeCid,
        transmissionTypeCid,
        makeCid,
        modelCid,
        year,
        km,
        powerKw,
        bodyTypeCid,
        variantCid,
        registeredUntil,
        doorsNum,
        seatsNum,
        isFirstOwner,
        isServiceBookAvailable,
        isVehicleGaraged,
        engineDisplacementCm3,
        emissionClassCid,
        batteryCapacityKwh,
        conditioningCid,
        colorExteriorCid,
        colorInteriorCid
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$AdWithAdAutoFragmentMixin$AdAutoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllAdsFilter$Query$Ad extends JsonSerializable
    with EquatableMixin, AdWithAdAutoFragmentMixin {
  FindAllAdsFilter$Query$Ad();

  factory FindAllAdsFilter$Query$Ad.fromJson(Map<String, dynamic> json) =>
      _$FindAllAdsFilter$Query$AdFromJson(json);

  @override
  List<Object?> get props => [
        $$typename,
        adId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        coordsLatitude,
        coordsLongitude,
        coordsRadius,
        address,
        priceEurocent,
        priceRating,
        files,
        adAuto
      ];
  @override
  Map<String, dynamic> toJson() => _$FindAllAdsFilter$Query$AdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllAdsFilter$Query extends JsonSerializable with EquatableMixin {
  FindAllAdsFilter$Query();

  factory FindAllAdsFilter$Query.fromJson(Map<String, dynamic> json) =>
      _$FindAllAdsFilter$QueryFromJson(json);

  late List<FindAllAdsFilter$Query$Ad> findAllAds;

  @override
  List<Object?> get props => [findAllAds];
  @override
  Map<String, dynamic> toJson() => _$FindAllAdsFilter$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdOrderByWithRelationInput extends JsonSerializable with EquatableMixin {
  AdOrderByWithRelationInput({
    this.adId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.title,
    this.text,
    this.coordsLatitude,
    this.coordsLongitude,
    this.coordsRadius,
    this.address,
    this.priceEurocent,
    this.userSub,
    this.user,
    this.adCategories,
    this.adAuto,
    this.adHouse,
    this.files,
    this.listAd,
    this.isSold,
    this.priceRating,
    this.adPromotion,
  });

  factory AdOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$AdOrderByWithRelationInputFromJson(json);

  @JsonKey(name: 'ad_id', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? adId;

  @JsonKey(name: 'created_at', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? createdAt;

  @JsonKey(name: 'updated_at', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? updatedAt;

  @JsonKey(name: 'deleted_at', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? deletedAt;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? title;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? text;

  @JsonKey(name: 'coords_latitude', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? coordsLatitude;

  @JsonKey(name: 'coords_longitude', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? coordsLongitude;

  @JsonKey(name: 'coords_radius', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? coordsRadius;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? address;

  @JsonKey(name: 'price_eurocent', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? priceEurocent;

  @JsonKey(name: 'user_sub', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? userSub;

  UserOrderByWithRelationInput? user;

  @JsonKey(name: 'ad_categories')
  AdCategoryOrderByRelationAggregateInput? adCategories;

  @JsonKey(name: 'ad_auto')
  AdAutoOrderByWithRelationInput? adAuto;

  @JsonKey(name: 'ad_house')
  AdHouseOrderByWithRelationInput? adHouse;

  FileOrderByRelationAggregateInput? files;

  @JsonKey(name: 'ListAd')
  ListAdOrderByRelationAggregateInput? listAd;

  @JsonKey(name: 'is_sold', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? isSold;

  @JsonKey(name: 'price_rating', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? priceRating;

  @JsonKey(name: 'AdPromotion')
  AdPromotionOrderByRelationAggregateInput? adPromotion;

  @override
  List<Object?> get props => [
        adId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        coordsLatitude,
        coordsLongitude,
        coordsRadius,
        address,
        priceEurocent,
        userSub,
        user,
        adCategories,
        adAuto,
        adHouse,
        files,
        listAd,
        isSold,
        priceRating,
        adPromotion
      ];
  @override
  Map<String, dynamic> toJson() => _$AdOrderByWithRelationInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserOrderByWithRelationInput extends JsonSerializable
    with EquatableMixin {
  UserOrderByWithRelationInput({
    this.userSub,
    this.name,
    this.ads,
    this.files,
    this.lists,
    this.blogs,
    this.userPromotion,
    this.adPromotion,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  @JsonKey(name: 'user_sub', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? userSub;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? name;

  AdOrderByRelationAggregateInput? ads;

  FileOrderByRelationAggregateInput? files;

  ListOrderByRelationAggregateInput? lists;

  BlogOrderByRelationAggregateInput? blogs;

  @JsonKey(name: 'UserPromotion')
  UserPromotionOrderByRelationAggregateInput? userPromotion;

  @JsonKey(name: 'AdPromotion')
  AdPromotionOrderByRelationAggregateInput? adPromotion;

  @override
  List<Object?> get props =>
      [userSub, name, ads, files, lists, blogs, userPromotion, adPromotion];
  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  AdOrderByRelationAggregateInput({this.$count});

  factory AdOrderByRelationAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$AdOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$AdOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FileOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  FileOrderByRelationAggregateInput({this.$count});

  factory FileOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$FileOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$FileOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  ListOrderByRelationAggregateInput({this.$count});

  factory ListOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ListOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$ListOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BlogOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  BlogOrderByRelationAggregateInput({this.$count});

  factory BlogOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BlogOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$BlogOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserPromotionOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  UserPromotionOrderByRelationAggregateInput({this.$count});

  factory UserPromotionOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserPromotionOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$UserPromotionOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdPromotionOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  AdPromotionOrderByRelationAggregateInput({this.$count});

  factory AdPromotionOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AdPromotionOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$AdPromotionOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdCategoryOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  AdCategoryOrderByRelationAggregateInput({this.$count});

  factory AdCategoryOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AdCategoryOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$AdCategoryOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdAutoOrderByWithRelationInput extends JsonSerializable
    with EquatableMixin {
  AdAutoOrderByWithRelationInput({
    this.adAutoId,
    this.adId,
    this.ad,
    this.conditionTypeCid,
    this.conditionType,
    this.vehicleTypeCid,
    this.vehicleType,
    this.fuelTypeCid,
    this.fuelType,
    this.transmissionTypeCid,
    this.transmissionType,
    this.makeCid,
    this.make,
    this.modelCid,
    this.model,
    this.year,
    this.km,
    this.powerKw,
    this.bodyTypeCid,
    this.bodyType,
    this.variantCid,
    this.variant,
    this.registeredUntil,
    this.doorsNum,
    this.seatsNum,
    this.isFirstOwner,
    this.isServiceBookAvailable,
    this.isVehicleGaraged,
    this.engineDisplacementCm3,
    this.emissionClassCid,
    this.emissionClass,
    this.batteryCapacityKwh,
    this.conditioningCid,
    this.conditioning,
    this.colorExteriorCid,
    this.colorExterior,
    this.colorInteriorCid,
    this.colorInterior,
  });

  factory AdAutoOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$AdAutoOrderByWithRelationInputFromJson(json);

  @JsonKey(name: 'ad_auto_id', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? adAutoId;

  @JsonKey(name: 'ad_id', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? adId;

  AdOrderByWithRelationInput? ad;

  @JsonKey(
      name: 'condition_type_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? conditionTypeCid;

  @JsonKey(name: 'condition_type')
  CategoryOrderByWithRelationInput? conditionType;

  @JsonKey(name: 'vehicle_type_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? vehicleTypeCid;

  @JsonKey(name: 'vehicle_type')
  CategoryOrderByWithRelationInput? vehicleType;

  @JsonKey(name: 'fuel_type_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? fuelTypeCid;

  @JsonKey(name: 'fuel_type')
  CategoryOrderByWithRelationInput? fuelType;

  @JsonKey(
      name: 'transmission_type_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? transmissionTypeCid;

  @JsonKey(name: 'transmission_type')
  CategoryOrderByWithRelationInput? transmissionType;

  @JsonKey(name: 'make_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? makeCid;

  CategoryOrderByWithRelationInput? make;

  @JsonKey(name: 'model_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? modelCid;

  CategoryOrderByWithRelationInput? model;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? year;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? km;

  @JsonKey(name: 'power_kw', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? powerKw;

  @JsonKey(name: 'body_type_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? bodyTypeCid;

  @JsonKey(name: 'body_type')
  CategoryOrderByWithRelationInput? bodyType;

  @JsonKey(name: 'variant_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? variantCid;

  CategoryOrderByWithRelationInput? variant;

  @JsonKey(name: 'registered_until', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? registeredUntil;

  @JsonKey(name: 'doors_num', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? doorsNum;

  @JsonKey(name: 'seats_num', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? seatsNum;

  @JsonKey(name: 'is_first_owner', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? isFirstOwner;

  @JsonKey(
      name: 'is_service_book_available',
      unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? isServiceBookAvailable;

  @JsonKey(
      name: 'is_vehicle_garaged', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? isVehicleGaraged;

  @JsonKey(
      name: 'engine_displacement_cm3',
      unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? engineDisplacementCm3;

  @JsonKey(
      name: 'emission_class_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? emissionClassCid;

  @JsonKey(name: 'emission_class')
  CategoryOrderByWithRelationInput? emissionClass;

  @JsonKey(
      name: 'battery_capacity_kwh', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? batteryCapacityKwh;

  @JsonKey(name: 'conditioning_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? conditioningCid;

  CategoryOrderByWithRelationInput? conditioning;

  @JsonKey(
      name: 'color_exterior_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? colorExteriorCid;

  @JsonKey(name: 'color_exterior')
  CategoryOrderByWithRelationInput? colorExterior;

  @JsonKey(
      name: 'color_interior_cid', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? colorInteriorCid;

  @JsonKey(name: 'color_interior')
  CategoryOrderByWithRelationInput? colorInterior;

  @override
  List<Object?> get props => [
        adAutoId,
        adId,
        ad,
        conditionTypeCid,
        conditionType,
        vehicleTypeCid,
        vehicleType,
        fuelTypeCid,
        fuelType,
        transmissionTypeCid,
        transmissionType,
        makeCid,
        make,
        modelCid,
        model,
        year,
        km,
        powerKw,
        bodyTypeCid,
        bodyType,
        variantCid,
        variant,
        registeredUntil,
        doorsNum,
        seatsNum,
        isFirstOwner,
        isServiceBookAvailable,
        isVehicleGaraged,
        engineDisplacementCm3,
        emissionClassCid,
        emissionClass,
        batteryCapacityKwh,
        conditioningCid,
        conditioning,
        colorExteriorCid,
        colorExterior,
        colorInteriorCid,
        colorInterior
      ];
  @override
  Map<String, dynamic> toJson() => _$AdAutoOrderByWithRelationInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CategoryOrderByWithRelationInput extends JsonSerializable
    with EquatableMixin {
  CategoryOrderByWithRelationInput({
    this.categoryId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.name,
    this.children,
    this.parentCategoryId,
    this.parent,
    this.icon,
    this.code,
    this.weight,
    this.adCategories,
    this.adAutoConditionType,
    this.adAutoVehicleType,
    this.adAutoFuelType,
    this.adAutoTransmissionType,
    this.adAutoMake,
    this.adAutoModel,
    this.adAutoBodyType,
    this.adAutoVariant,
    this.adAutoEmissionClass,
    this.adAutoConditioning,
    this.adAutoColorInterior,
    this.adAutoColorExterior,
    this.language,
    this.promotionRegion,
  });

  factory CategoryOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryOrderByWithRelationInputFromJson(json);

  @JsonKey(name: 'category_id', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? categoryId;

  @JsonKey(name: 'created_at', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? createdAt;

  @JsonKey(name: 'updated_at', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? updatedAt;

  @JsonKey(name: 'deleted_at', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? deletedAt;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? name;

  CategoryOrderByRelationAggregateInput? children;

  @JsonKey(
      name: 'parent_category_id', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? parentCategoryId;

  CategoryOrderByWithRelationInput? parent;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? icon;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? code;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? weight;

  @JsonKey(name: 'ad_categories')
  AdCategoryOrderByRelationAggregateInput? adCategories;

  @JsonKey(name: 'AdAutoConditionType')
  AdAutoOrderByRelationAggregateInput? adAutoConditionType;

  @JsonKey(name: 'AdAutoVehicleType')
  AdAutoOrderByRelationAggregateInput? adAutoVehicleType;

  @JsonKey(name: 'AdAutoFuelType')
  AdAutoOrderByRelationAggregateInput? adAutoFuelType;

  @JsonKey(name: 'AdAutoTransmissionType')
  AdAutoOrderByRelationAggregateInput? adAutoTransmissionType;

  @JsonKey(name: 'AdAutoMake')
  AdAutoOrderByRelationAggregateInput? adAutoMake;

  @JsonKey(name: 'AdAutoModel')
  AdAutoOrderByRelationAggregateInput? adAutoModel;

  @JsonKey(name: 'AdAutoBodyType')
  AdAutoOrderByRelationAggregateInput? adAutoBodyType;

  @JsonKey(name: 'AdAutoVariant')
  AdAutoOrderByRelationAggregateInput? adAutoVariant;

  @JsonKey(name: 'AdAutoEmissionClass')
  AdAutoOrderByRelationAggregateInput? adAutoEmissionClass;

  @JsonKey(name: 'AdAutoConditioning')
  AdAutoOrderByRelationAggregateInput? adAutoConditioning;

  @JsonKey(name: 'AdAutoColorInterior')
  AdAutoOrderByRelationAggregateInput? adAutoColorInterior;

  @JsonKey(name: 'AdAutoColorExterior')
  AdAutoOrderByRelationAggregateInput? adAutoColorExterior;

  @JsonKey(name: 'Language')
  BlogOrderByRelationAggregateInput? language;

  @JsonKey(name: 'PromotionRegion')
  PromotionPlanOrderByRelationAggregateInput? promotionRegion;

  @override
  List<Object?> get props => [
        categoryId,
        createdAt,
        updatedAt,
        deletedAt,
        name,
        children,
        parentCategoryId,
        parent,
        icon,
        code,
        weight,
        adCategories,
        adAutoConditionType,
        adAutoVehicleType,
        adAutoFuelType,
        adAutoTransmissionType,
        adAutoMake,
        adAutoModel,
        adAutoBodyType,
        adAutoVariant,
        adAutoEmissionClass,
        adAutoConditioning,
        adAutoColorInterior,
        adAutoColorExterior,
        language,
        promotionRegion
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$CategoryOrderByWithRelationInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CategoryOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  CategoryOrderByRelationAggregateInput({this.$count});

  factory CategoryOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CategoryOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$CategoryOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdAutoOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  AdAutoOrderByRelationAggregateInput({this.$count});

  factory AdAutoOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$AdAutoOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$AdAutoOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PromotionPlanOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  PromotionPlanOrderByRelationAggregateInput({this.$count});

  factory PromotionPlanOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$PromotionPlanOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$PromotionPlanOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdHouseOrderByWithRelationInput extends JsonSerializable
    with EquatableMixin {
  AdHouseOrderByWithRelationInput({
    this.adHouseId,
    this.adId,
    this.ad,
    this.meters,
  });

  factory AdHouseOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$AdHouseOrderByWithRelationInputFromJson(json);

  @JsonKey(name: 'ad_house_id', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? adHouseId;

  @JsonKey(name: 'ad_id', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? adId;

  AdOrderByWithRelationInput? ad;

  @JsonKey(unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? meters;

  @override
  List<Object?> get props => [adHouseId, adId, ad, meters];
  @override
  Map<String, dynamic> toJson() =>
      _$AdHouseOrderByWithRelationInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListAdOrderByRelationAggregateInput extends JsonSerializable
    with EquatableMixin {
  ListAdOrderByRelationAggregateInput({this.$count});

  factory ListAdOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$ListAdOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: '_count', unknownEnumValue: SortOrder.artemisUnknown)
  SortOrder? $count;

  @override
  List<Object?> get props => [$count];
  @override
  Map<String, dynamic> toJson() =>
      _$ListAdOrderByRelationAggregateInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllAdsMyAds$Query$Ad extends JsonSerializable
    with EquatableMixin, AdWithAdAutoFragmentMixin {
  FindAllAdsMyAds$Query$Ad();

  factory FindAllAdsMyAds$Query$Ad.fromJson(Map<String, dynamic> json) =>
      _$FindAllAdsMyAds$Query$AdFromJson(json);

  @override
  List<Object?> get props => [
        $$typename,
        adId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        coordsLatitude,
        coordsLongitude,
        coordsRadius,
        address,
        priceEurocent,
        priceRating,
        files,
        adAuto
      ];
  @override
  Map<String, dynamic> toJson() => _$FindAllAdsMyAds$Query$AdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllAdsMyAds$Query extends JsonSerializable with EquatableMixin {
  FindAllAdsMyAds$Query();

  factory FindAllAdsMyAds$Query.fromJson(Map<String, dynamic> json) =>
      _$FindAllAdsMyAds$QueryFromJson(json);

  late List<FindAllAdsMyAds$Query$Ad> findAllAds;

  @override
  List<Object?> get props => [findAllAds];
  @override
  Map<String, dynamic> toJson() => _$FindAllAdsMyAds$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllAdsWhere$Query$Ad extends JsonSerializable
    with EquatableMixin, AdWithAdAutoFragmentMixin {
  FindAllAdsWhere$Query$Ad();

  factory FindAllAdsWhere$Query$Ad.fromJson(Map<String, dynamic> json) =>
      _$FindAllAdsWhere$Query$AdFromJson(json);

  @override
  List<Object?> get props => [
        $$typename,
        adId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        coordsLatitude,
        coordsLongitude,
        coordsRadius,
        address,
        priceEurocent,
        priceRating,
        files,
        adAuto
      ];
  @override
  Map<String, dynamic> toJson() => _$FindAllAdsWhere$Query$AdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllAdsWhere$Query extends JsonSerializable with EquatableMixin {
  FindAllAdsWhere$Query();

  factory FindAllAdsWhere$Query.fromJson(Map<String, dynamic> json) =>
      _$FindAllAdsWhere$QueryFromJson(json);

  late List<FindAllAdsWhere$Query$Ad> findAllAds;

  @override
  List<Object?> get props => [findAllAds];
  @override
  Map<String, dynamic> toJson() => _$FindAllAdsWhere$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdWhereInput extends JsonSerializable with EquatableMixin {
  AdWhereInput({
    this.and,
    this.or,
    this.not,
    this.adId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.title,
    this.text,
    this.coordsLatitude,
    this.coordsLongitude,
    this.coordsRadius,
    this.address,
    this.priceEurocent,
    this.userSub,
    this.user,
    this.adCategories,
    this.adAuto,
    this.adHouse,
    this.files,
    this.listAd,
    this.isSold,
    this.priceRating,
    this.adPromotion,
  });

  factory AdWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AdWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<AdWhereInput>? and;

  @JsonKey(name: 'OR')
  List<AdWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<AdWhereInput>? not;

  @JsonKey(name: 'ad_id')
  IntFilter? adId;

  @JsonKey(name: 'created_at')
  DateTimeFilter? createdAt;

  @JsonKey(name: 'updated_at')
  DateTimeFilter? updatedAt;

  @JsonKey(name: 'deleted_at')
  DateTimeNullableFilter? deletedAt;

  StringFilter? title;

  StringFilter? text;

  @JsonKey(name: 'coords_latitude')
  FloatNullableFilter? coordsLatitude;

  @JsonKey(name: 'coords_longitude')
  FloatNullableFilter? coordsLongitude;

  @JsonKey(name: 'coords_radius')
  IntNullableFilter? coordsRadius;

  StringNullableFilter? address;

  @JsonKey(name: 'price_eurocent')
  IntNullableFilter? priceEurocent;

  @JsonKey(name: 'user_sub')
  StringFilter? userSub;

  UserRelationFilter? user;

  @JsonKey(name: 'ad_categories')
  AdCategoryListRelationFilter? adCategories;

  @JsonKey(name: 'ad_auto')
  AdAutoRelationFilter? adAuto;

  @JsonKey(name: 'ad_house')
  AdHouseRelationFilter? adHouse;

  FileListRelationFilter? files;

  @JsonKey(name: 'ListAd')
  ListAdListRelationFilter? listAd;

  @JsonKey(name: 'is_sold')
  BoolFilter? isSold;

  @JsonKey(name: 'price_rating')
  DecimalNullableFilter? priceRating;

  @JsonKey(name: 'AdPromotion')
  AdPromotionListRelationFilter? adPromotion;

  @override
  List<Object?> get props => [
        and,
        or,
        not,
        adId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        coordsLatitude,
        coordsLongitude,
        coordsRadius,
        address,
        priceEurocent,
        userSub,
        user,
        adCategories,
        adAuto,
        adHouse,
        files,
        listAd,
        isSold,
        priceRating,
        adPromotion
      ];
  @override
  Map<String, dynamic> toJson() => _$AdWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IntFilter extends JsonSerializable with EquatableMixin {
  IntFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  int? equals;

  @JsonKey(name: 'in')
  List<int>? kw$in;

  List<int>? notIn;

  int? lt;

  int? lte;

  int? gt;

  int? gte;

  NestedIntFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedIntFilter extends JsonSerializable with EquatableMixin {
  NestedIntFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  int? equals;

  @JsonKey(name: 'in')
  List<int>? kw$in;

  List<int>? notIn;

  int? lt;

  int? lte;

  int? gt;

  int? gte;

  NestedIntFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DateTimeFilter extends JsonSerializable with EquatableMixin {
  DateTimeFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? equals;

  @JsonKey(
      name: 'in',
      fromJson: fromGraphQLListNullableDateTimeToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableDateTime)
  List<DateTime>? kw$in;

  @JsonKey(
      fromJson: fromGraphQLListNullableDateTimeToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableDateTime)
  List<DateTime>? notIn;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? lt;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? lte;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? gt;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? gte;

  NestedDateTimeFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedDateTimeFilter extends JsonSerializable with EquatableMixin {
  NestedDateTimeFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? equals;

  @JsonKey(
      name: 'in',
      fromJson: fromGraphQLListNullableDateTimeToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableDateTime)
  List<DateTime>? kw$in;

  @JsonKey(
      fromJson: fromGraphQLListNullableDateTimeToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableDateTime)
  List<DateTime>? notIn;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? lt;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? lte;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? gt;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? gte;

  NestedDateTimeFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DateTimeNullableFilter extends JsonSerializable with EquatableMixin {
  DateTimeNullableFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeNullableFilterFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? equals;

  @JsonKey(
      name: 'in',
      fromJson: fromGraphQLListNullableDateTimeToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableDateTime)
  List<DateTime>? kw$in;

  @JsonKey(
      fromJson: fromGraphQLListNullableDateTimeToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableDateTime)
  List<DateTime>? notIn;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? lt;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? lte;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? gt;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? gte;

  NestedDateTimeNullableFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$DateTimeNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedDateTimeNullableFilter extends JsonSerializable
    with EquatableMixin {
  NestedDateTimeNullableFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeNullableFilterFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? equals;

  @JsonKey(
      name: 'in',
      fromJson: fromGraphQLListNullableDateTimeToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableDateTime)
  List<DateTime>? kw$in;

  @JsonKey(
      fromJson: fromGraphQLListNullableDateTimeToDartListNullableDateTime,
      toJson: fromDartListNullableDateTimeToGraphQLListNullableDateTime)
  List<DateTime>? notIn;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? lt;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? lte;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? gt;

  @JsonKey(
      fromJson: fromGraphQLDateTimeNullableToDartDateTimeNullable,
      toJson: fromDartDateTimeNullableToGraphQLDateTimeNullable)
  DateTime? gte;

  NestedDateTimeNullableFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StringFilter extends JsonSerializable with EquatableMixin {
  StringFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  String? equals;

  @JsonKey(name: 'in')
  List<String>? kw$in;

  List<String>? notIn;

  String? lt;

  String? lte;

  String? gt;

  String? gte;

  String? contains;

  String? startsWith;

  String? endsWith;

  NestedStringFilter? not;

  @override
  List<Object?> get props => [
        equals,
        kw$in,
        notIn,
        lt,
        lte,
        gt,
        gte,
        contains,
        startsWith,
        endsWith,
        not
      ];
  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedStringFilter extends JsonSerializable with EquatableMixin {
  NestedStringFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  String? equals;

  @JsonKey(name: 'in')
  List<String>? kw$in;

  List<String>? notIn;

  String? lt;

  String? lte;

  String? gt;

  String? gte;

  String? contains;

  String? startsWith;

  String? endsWith;

  NestedStringFilter? not;

  @override
  List<Object?> get props => [
        equals,
        kw$in,
        notIn,
        lt,
        lte,
        gt,
        gte,
        contains,
        startsWith,
        endsWith,
        not
      ];
  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FloatNullableFilter extends JsonSerializable with EquatableMixin {
  FloatNullableFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory FloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$FloatNullableFilterFromJson(json);

  double? equals;

  @JsonKey(name: 'in')
  List<double>? kw$in;

  List<double>? notIn;

  double? lt;

  double? lte;

  double? gt;

  double? gte;

  NestedFloatNullableFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$FloatNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedFloatNullableFilter extends JsonSerializable with EquatableMixin {
  NestedFloatNullableFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedFloatNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatNullableFilterFromJson(json);

  double? equals;

  @JsonKey(name: 'in')
  List<double>? kw$in;

  List<double>? notIn;

  double? lt;

  double? lte;

  double? gt;

  double? gte;

  NestedFloatNullableFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$NestedFloatNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class IntNullableFilter extends JsonSerializable with EquatableMixin {
  IntNullableFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory IntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$IntNullableFilterFromJson(json);

  int? equals;

  @JsonKey(name: 'in')
  List<int>? kw$in;

  List<int>? notIn;

  int? lt;

  int? lte;

  int? gt;

  int? gte;

  NestedIntNullableFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$IntNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedIntNullableFilter extends JsonSerializable with EquatableMixin {
  NestedIntNullableFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  int? equals;

  @JsonKey(name: 'in')
  List<int>? kw$in;

  List<int>? notIn;

  int? lt;

  int? lte;

  int? gt;

  int? gte;

  NestedIntNullableFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class StringNullableFilter extends JsonSerializable with EquatableMixin {
  StringNullableFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$StringNullableFilterFromJson(json);

  String? equals;

  @JsonKey(name: 'in')
  List<String>? kw$in;

  List<String>? notIn;

  String? lt;

  String? lte;

  String? gt;

  String? gte;

  String? contains;

  String? startsWith;

  String? endsWith;

  NestedStringNullableFilter? not;

  @override
  List<Object?> get props => [
        equals,
        kw$in,
        notIn,
        lt,
        lte,
        gt,
        gte,
        contains,
        startsWith,
        endsWith,
        not
      ];
  @override
  Map<String, dynamic> toJson() => _$StringNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedStringNullableFilter extends JsonSerializable with EquatableMixin {
  NestedStringNullableFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringNullableFilterFromJson(json);

  String? equals;

  @JsonKey(name: 'in')
  List<String>? kw$in;

  List<String>? notIn;

  String? lt;

  String? lte;

  String? gt;

  String? gte;

  String? contains;

  String? startsWith;

  String? endsWith;

  NestedStringNullableFilter? not;

  @override
  List<Object?> get props => [
        equals,
        kw$in,
        notIn,
        lt,
        lte,
        gt,
        gte,
        contains,
        startsWith,
        endsWith,
        not
      ];
  @override
  Map<String, dynamic> toJson() => _$NestedStringNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserRelationFilter extends JsonSerializable with EquatableMixin {
  UserRelationFilter({
    this.kw$is,
    this.isNot,
  });

  factory UserRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UserRelationFilterFromJson(json);

  @JsonKey(name: 'is')
  UserWhereInput? kw$is;

  UserWhereInput? isNot;

  @override
  List<Object?> get props => [kw$is, isNot];
  @override
  Map<String, dynamic> toJson() => _$UserRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserWhereInput extends JsonSerializable with EquatableMixin {
  UserWhereInput({
    this.and,
    this.or,
    this.not,
    this.userSub,
    this.name,
    this.ads,
    this.files,
    this.lists,
    this.blogs,
    this.userPromotion,
    this.adPromotion,
  });

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<UserWhereInput>? and;

  @JsonKey(name: 'OR')
  List<UserWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<UserWhereInput>? not;

  @JsonKey(name: 'user_sub')
  StringFilter? userSub;

  StringNullableFilter? name;

  AdListRelationFilter? ads;

  FileListRelationFilter? files;

  ListListRelationFilter? lists;

  BlogListRelationFilter? blogs;

  @JsonKey(name: 'UserPromotion')
  UserPromotionListRelationFilter? userPromotion;

  @JsonKey(name: 'AdPromotion')
  AdPromotionListRelationFilter? adPromotion;

  @override
  List<Object?> get props => [
        and,
        or,
        not,
        userSub,
        name,
        ads,
        files,
        lists,
        blogs,
        userPromotion,
        adPromotion
      ];
  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdListRelationFilter extends JsonSerializable with EquatableMixin {
  AdListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory AdListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AdListRelationFilterFromJson(json);

  AdWhereInput? every;

  AdWhereInput? some;

  AdWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() => _$AdListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FileListRelationFilter extends JsonSerializable with EquatableMixin {
  FileListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory FileListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$FileListRelationFilterFromJson(json);

  FileWhereInput? every;

  FileWhereInput? some;

  FileWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() => _$FileListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FileWhereInput extends JsonSerializable with EquatableMixin {
  FileWhereInput({
    this.and,
    this.or,
    this.not,
    this.fileId,
    this.filename,
    this.filesize,
    this.code,
    this.path,
    this.adId,
    this.ad,
    this.user,
  });

  factory FileWhereInput.fromJson(Map<String, dynamic> json) =>
      _$FileWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<FileWhereInput>? and;

  @JsonKey(name: 'OR')
  List<FileWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<FileWhereInput>? not;

  @JsonKey(name: 'file_id')
  IntFilter? fileId;

  StringFilter? filename;

  IntFilter? filesize;

  StringFilter? code;

  StringFilter? path;

  @JsonKey(name: 'ad_id')
  IntFilter? adId;

  AdRelationFilter? ad;

  UserRelationFilter? user;

  @override
  List<Object?> get props =>
      [and, or, not, fileId, filename, filesize, code, path, adId, ad, user];
  @override
  Map<String, dynamic> toJson() => _$FileWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdRelationFilter extends JsonSerializable with EquatableMixin {
  AdRelationFilter({
    this.kw$is,
    this.isNot,
  });

  factory AdRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AdRelationFilterFromJson(json);

  @JsonKey(name: 'is')
  AdWhereInput? kw$is;

  AdWhereInput? isNot;

  @override
  List<Object?> get props => [kw$is, isNot];
  @override
  Map<String, dynamic> toJson() => _$AdRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListListRelationFilter extends JsonSerializable with EquatableMixin {
  ListListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory ListListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ListListRelationFilterFromJson(json);

  ListWhereInput? every;

  ListWhereInput? some;

  ListWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() => _$ListListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListWhereInput extends JsonSerializable with EquatableMixin {
  ListWhereInput({
    this.and,
    this.or,
    this.not,
    this.listId,
    this.listType,
    this.title,
    this.searchParams,
    this.isNotifiableByEmail,
    this.isNotifiableByPush,
    this.isNotifiableBySms,
    this.user,
    this.listAd,
  });

  factory ListWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ListWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<ListWhereInput>? and;

  @JsonKey(name: 'OR')
  List<ListWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<ListWhereInput>? not;

  @JsonKey(name: 'list_id')
  IntFilter? listId;

  @JsonKey(name: 'list_type')
  IntFilter? listType;

  StringFilter? title;

  @JsonKey(name: 'search_params')
  StringFilter? searchParams;

  @JsonKey(name: 'is_notifiable_by_email')
  BoolFilter? isNotifiableByEmail;

  @JsonKey(name: 'is_notifiable_by_push')
  BoolFilter? isNotifiableByPush;

  @JsonKey(name: 'is_notifiable_by_sms')
  BoolFilter? isNotifiableBySms;

  UserRelationFilter? user;

  @JsonKey(name: 'ListAd')
  ListAdListRelationFilter? listAd;

  @override
  List<Object?> get props => [
        and,
        or,
        not,
        listId,
        listType,
        title,
        searchParams,
        isNotifiableByEmail,
        isNotifiableByPush,
        isNotifiableBySms,
        user,
        listAd
      ];
  @override
  Map<String, dynamic> toJson() => _$ListWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoolFilter extends JsonSerializable with EquatableMixin {
  BoolFilter({
    this.equals,
    this.not,
  });

  factory BoolFilter.fromJson(Map<String, dynamic> json) =>
      _$BoolFilterFromJson(json);

  bool? equals;

  NestedBoolFilter? not;

  @override
  List<Object?> get props => [equals, not];
  @override
  Map<String, dynamic> toJson() => _$BoolFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedBoolFilter extends JsonSerializable with EquatableMixin {
  NestedBoolFilter({
    this.equals,
    this.not,
  });

  factory NestedBoolFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBoolFilterFromJson(json);

  bool? equals;

  NestedBoolFilter? not;

  @override
  List<Object?> get props => [equals, not];
  @override
  Map<String, dynamic> toJson() => _$NestedBoolFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListAdListRelationFilter extends JsonSerializable with EquatableMixin {
  ListAdListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory ListAdListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ListAdListRelationFilterFromJson(json);

  ListAdWhereInput? every;

  ListAdWhereInput? some;

  ListAdWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() => _$ListAdListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListAdWhereInput extends JsonSerializable with EquatableMixin {
  ListAdWhereInput({
    this.and,
    this.or,
    this.not,
    this.adId,
    this.ad,
    this.listId,
    this.list,
  });

  factory ListAdWhereInput.fromJson(Map<String, dynamic> json) =>
      _$ListAdWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<ListAdWhereInput>? and;

  @JsonKey(name: 'OR')
  List<ListAdWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<ListAdWhereInput>? not;

  @JsonKey(name: 'ad_id')
  IntFilter? adId;

  AdRelationFilter? ad;

  @JsonKey(name: 'list_id')
  IntFilter? listId;

  ListRelationFilter? list;

  @override
  List<Object?> get props => [and, or, not, adId, ad, listId, list];
  @override
  Map<String, dynamic> toJson() => _$ListAdWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ListRelationFilter extends JsonSerializable with EquatableMixin {
  ListRelationFilter({
    this.kw$is,
    this.isNot,
  });

  factory ListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$ListRelationFilterFromJson(json);

  @JsonKey(name: 'is')
  ListWhereInput? kw$is;

  ListWhereInput? isNot;

  @override
  List<Object?> get props => [kw$is, isNot];
  @override
  Map<String, dynamic> toJson() => _$ListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BlogListRelationFilter extends JsonSerializable with EquatableMixin {
  BlogListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory BlogListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$BlogListRelationFilterFromJson(json);

  BlogWhereInput? every;

  BlogWhereInput? some;

  BlogWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() => _$BlogListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BlogWhereInput extends JsonSerializable with EquatableMixin {
  BlogWhereInput({
    this.and,
    this.or,
    this.not,
    this.blogId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.title,
    this.slug,
    this.text,
    this.languageCid,
    this.language,
    this.user,
  });

  factory BlogWhereInput.fromJson(Map<String, dynamic> json) =>
      _$BlogWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<BlogWhereInput>? and;

  @JsonKey(name: 'OR')
  List<BlogWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<BlogWhereInput>? not;

  @JsonKey(name: 'blog_id')
  IntFilter? blogId;

  @JsonKey(name: 'created_at')
  DateTimeFilter? createdAt;

  @JsonKey(name: 'updated_at')
  DateTimeFilter? updatedAt;

  @JsonKey(name: 'deleted_at')
  DateTimeNullableFilter? deletedAt;

  StringFilter? title;

  StringFilter? slug;

  StringFilter? text;

  @JsonKey(name: 'language_cid')
  IntNullableFilter? languageCid;

  CategoryRelationFilter? language;

  UserRelationFilter? user;

  @override
  List<Object?> get props => [
        and,
        or,
        not,
        blogId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        slug,
        text,
        languageCid,
        language,
        user
      ];
  @override
  Map<String, dynamic> toJson() => _$BlogWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CategoryRelationFilter extends JsonSerializable with EquatableMixin {
  CategoryRelationFilter({
    this.kw$is,
    this.isNot,
  });

  factory CategoryRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CategoryRelationFilterFromJson(json);

  @JsonKey(name: 'is')
  CategoryWhereInput? kw$is;

  CategoryWhereInput? isNot;

  @override
  List<Object?> get props => [kw$is, isNot];
  @override
  Map<String, dynamic> toJson() => _$CategoryRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CategoryWhereInput extends JsonSerializable with EquatableMixin {
  CategoryWhereInput({
    this.and,
    this.or,
    this.not,
    this.categoryId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.name,
    this.children,
    this.parentCategoryId,
    this.parent,
    this.icon,
    this.code,
    this.weight,
    this.adCategories,
    this.adAutoConditionType,
    this.adAutoVehicleType,
    this.adAutoFuelType,
    this.adAutoTransmissionType,
    this.adAutoMake,
    this.adAutoModel,
    this.adAutoBodyType,
    this.adAutoVariant,
    this.adAutoEmissionClass,
    this.adAutoConditioning,
    this.adAutoColorInterior,
    this.adAutoColorExterior,
    this.language,
    this.promotionRegion,
  });

  factory CategoryWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CategoryWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<CategoryWhereInput>? and;

  @JsonKey(name: 'OR')
  List<CategoryWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<CategoryWhereInput>? not;

  @JsonKey(name: 'category_id')
  IntFilter? categoryId;

  @JsonKey(name: 'created_at')
  DateTimeFilter? createdAt;

  @JsonKey(name: 'updated_at')
  DateTimeFilter? updatedAt;

  @JsonKey(name: 'deleted_at')
  DateTimeNullableFilter? deletedAt;

  StringFilter? name;

  CategoryListRelationFilter? children;

  @JsonKey(name: 'parent_category_id')
  IntNullableFilter? parentCategoryId;

  CategoryRelationFilter? parent;

  StringNullableFilter? icon;

  StringFilter? code;

  IntNullableFilter? weight;

  @JsonKey(name: 'ad_categories')
  AdCategoryListRelationFilter? adCategories;

  @JsonKey(name: 'AdAutoConditionType')
  AdAutoListRelationFilter? adAutoConditionType;

  @JsonKey(name: 'AdAutoVehicleType')
  AdAutoListRelationFilter? adAutoVehicleType;

  @JsonKey(name: 'AdAutoFuelType')
  AdAutoListRelationFilter? adAutoFuelType;

  @JsonKey(name: 'AdAutoTransmissionType')
  AdAutoListRelationFilter? adAutoTransmissionType;

  @JsonKey(name: 'AdAutoMake')
  AdAutoListRelationFilter? adAutoMake;

  @JsonKey(name: 'AdAutoModel')
  AdAutoListRelationFilter? adAutoModel;

  @JsonKey(name: 'AdAutoBodyType')
  AdAutoListRelationFilter? adAutoBodyType;

  @JsonKey(name: 'AdAutoVariant')
  AdAutoListRelationFilter? adAutoVariant;

  @JsonKey(name: 'AdAutoEmissionClass')
  AdAutoListRelationFilter? adAutoEmissionClass;

  @JsonKey(name: 'AdAutoConditioning')
  AdAutoListRelationFilter? adAutoConditioning;

  @JsonKey(name: 'AdAutoColorInterior')
  AdAutoListRelationFilter? adAutoColorInterior;

  @JsonKey(name: 'AdAutoColorExterior')
  AdAutoListRelationFilter? adAutoColorExterior;

  @JsonKey(name: 'Language')
  BlogListRelationFilter? language;

  @JsonKey(name: 'PromotionRegion')
  PromotionPlanListRelationFilter? promotionRegion;

  @override
  List<Object?> get props => [
        and,
        or,
        not,
        categoryId,
        createdAt,
        updatedAt,
        deletedAt,
        name,
        children,
        parentCategoryId,
        parent,
        icon,
        code,
        weight,
        adCategories,
        adAutoConditionType,
        adAutoVehicleType,
        adAutoFuelType,
        adAutoTransmissionType,
        adAutoMake,
        adAutoModel,
        adAutoBodyType,
        adAutoVariant,
        adAutoEmissionClass,
        adAutoConditioning,
        adAutoColorInterior,
        adAutoColorExterior,
        language,
        promotionRegion
      ];
  @override
  Map<String, dynamic> toJson() => _$CategoryWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CategoryListRelationFilter extends JsonSerializable with EquatableMixin {
  CategoryListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory CategoryListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$CategoryListRelationFilterFromJson(json);

  CategoryWhereInput? every;

  CategoryWhereInput? some;

  CategoryWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() => _$CategoryListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdCategoryListRelationFilter extends JsonSerializable
    with EquatableMixin {
  AdCategoryListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory AdCategoryListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AdCategoryListRelationFilterFromJson(json);

  AdCategoryWhereInput? every;

  AdCategoryWhereInput? some;

  AdCategoryWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() => _$AdCategoryListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdCategoryWhereInput extends JsonSerializable with EquatableMixin {
  AdCategoryWhereInput({
    this.and,
    this.or,
    this.not,
    this.adId,
    this.ad,
    this.categoryId,
    this.category,
  });

  factory AdCategoryWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AdCategoryWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<AdCategoryWhereInput>? and;

  @JsonKey(name: 'OR')
  List<AdCategoryWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<AdCategoryWhereInput>? not;

  @JsonKey(name: 'ad_id')
  IntFilter? adId;

  AdRelationFilter? ad;

  @JsonKey(name: 'category_id')
  IntFilter? categoryId;

  CategoryRelationFilter? category;

  @override
  List<Object?> get props => [and, or, not, adId, ad, categoryId, category];
  @override
  Map<String, dynamic> toJson() => _$AdCategoryWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdAutoListRelationFilter extends JsonSerializable with EquatableMixin {
  AdAutoListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory AdAutoListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AdAutoListRelationFilterFromJson(json);

  AdAutoWhereInput? every;

  AdAutoWhereInput? some;

  AdAutoWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() => _$AdAutoListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdAutoWhereInput extends JsonSerializable with EquatableMixin {
  AdAutoWhereInput({
    this.and,
    this.or,
    this.not,
    this.adAutoId,
    this.adId,
    this.ad,
    this.conditionTypeCid,
    this.conditionType,
    this.vehicleTypeCid,
    this.vehicleType,
    this.fuelTypeCid,
    this.fuelType,
    this.transmissionTypeCid,
    this.transmissionType,
    this.makeCid,
    this.make,
    this.modelCid,
    this.model,
    this.year,
    this.km,
    this.powerKw,
    this.bodyTypeCid,
    this.bodyType,
    this.variantCid,
    this.variant,
    this.registeredUntil,
    this.doorsNum,
    this.seatsNum,
    this.isFirstOwner,
    this.isServiceBookAvailable,
    this.isVehicleGaraged,
    this.engineDisplacementCm3,
    this.emissionClassCid,
    this.emissionClass,
    this.batteryCapacityKwh,
    this.conditioningCid,
    this.conditioning,
    this.colorExteriorCid,
    this.colorExterior,
    this.colorInteriorCid,
    this.colorInterior,
  });

  factory AdAutoWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AdAutoWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<AdAutoWhereInput>? and;

  @JsonKey(name: 'OR')
  List<AdAutoWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<AdAutoWhereInput>? not;

  @JsonKey(name: 'ad_auto_id')
  IntFilter? adAutoId;

  @JsonKey(name: 'ad_id')
  IntFilter? adId;

  AdRelationFilter? ad;

  @JsonKey(name: 'condition_type_cid')
  IntNullableFilter? conditionTypeCid;

  @JsonKey(name: 'condition_type')
  CategoryRelationFilter? conditionType;

  @JsonKey(name: 'vehicle_type_cid')
  IntNullableFilter? vehicleTypeCid;

  @JsonKey(name: 'vehicle_type')
  CategoryRelationFilter? vehicleType;

  @JsonKey(name: 'fuel_type_cid')
  IntNullableFilter? fuelTypeCid;

  @JsonKey(name: 'fuel_type')
  CategoryRelationFilter? fuelType;

  @JsonKey(name: 'transmission_type_cid')
  IntNullableFilter? transmissionTypeCid;

  @JsonKey(name: 'transmission_type')
  CategoryRelationFilter? transmissionType;

  @JsonKey(name: 'make_cid')
  IntNullableFilter? makeCid;

  CategoryRelationFilter? make;

  @JsonKey(name: 'model_cid')
  IntNullableFilter? modelCid;

  CategoryRelationFilter? model;

  IntFilter? year;

  IntNullableFilter? km;

  @JsonKey(name: 'power_kw')
  IntNullableFilter? powerKw;

  @JsonKey(name: 'body_type_cid')
  IntNullableFilter? bodyTypeCid;

  @JsonKey(name: 'body_type')
  CategoryRelationFilter? bodyType;

  @JsonKey(name: 'variant_cid')
  IntNullableFilter? variantCid;

  CategoryRelationFilter? variant;

  @JsonKey(name: 'registered_until')
  DateTimeNullableFilter? registeredUntil;

  @JsonKey(name: 'doors_num')
  IntNullableFilter? doorsNum;

  @JsonKey(name: 'seats_num')
  IntNullableFilter? seatsNum;

  @JsonKey(name: 'is_first_owner')
  BoolNullableFilter? isFirstOwner;

  @JsonKey(name: 'is_service_book_available')
  BoolNullableFilter? isServiceBookAvailable;

  @JsonKey(name: 'is_vehicle_garaged')
  BoolNullableFilter? isVehicleGaraged;

  @JsonKey(name: 'engine_displacement_cm3')
  IntNullableFilter? engineDisplacementCm3;

  @JsonKey(name: 'emission_class_cid')
  IntNullableFilter? emissionClassCid;

  @JsonKey(name: 'emission_class')
  CategoryRelationFilter? emissionClass;

  @JsonKey(name: 'battery_capacity_kwh')
  IntNullableFilter? batteryCapacityKwh;

  @JsonKey(name: 'conditioning_cid')
  IntNullableFilter? conditioningCid;

  CategoryRelationFilter? conditioning;

  @JsonKey(name: 'color_exterior_cid')
  IntNullableFilter? colorExteriorCid;

  @JsonKey(name: 'color_exterior')
  CategoryRelationFilter? colorExterior;

  @JsonKey(name: 'color_interior_cid')
  IntNullableFilter? colorInteriorCid;

  @JsonKey(name: 'color_interior')
  CategoryRelationFilter? colorInterior;

  @override
  List<Object?> get props => [
        and,
        or,
        not,
        adAutoId,
        adId,
        ad,
        conditionTypeCid,
        conditionType,
        vehicleTypeCid,
        vehicleType,
        fuelTypeCid,
        fuelType,
        transmissionTypeCid,
        transmissionType,
        makeCid,
        make,
        modelCid,
        model,
        year,
        km,
        powerKw,
        bodyTypeCid,
        bodyType,
        variantCid,
        variant,
        registeredUntil,
        doorsNum,
        seatsNum,
        isFirstOwner,
        isServiceBookAvailable,
        isVehicleGaraged,
        engineDisplacementCm3,
        emissionClassCid,
        emissionClass,
        batteryCapacityKwh,
        conditioningCid,
        conditioning,
        colorExteriorCid,
        colorExterior,
        colorInteriorCid,
        colorInterior
      ];
  @override
  Map<String, dynamic> toJson() => _$AdAutoWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BoolNullableFilter extends JsonSerializable with EquatableMixin {
  BoolNullableFilter({
    this.equals,
    this.not,
  });

  factory BoolNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$BoolNullableFilterFromJson(json);

  bool? equals;

  NestedBoolNullableFilter? not;

  @override
  List<Object?> get props => [equals, not];
  @override
  Map<String, dynamic> toJson() => _$BoolNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedBoolNullableFilter extends JsonSerializable with EquatableMixin {
  NestedBoolNullableFilter({
    this.equals,
    this.not,
  });

  factory NestedBoolNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedBoolNullableFilterFromJson(json);

  bool? equals;

  NestedBoolNullableFilter? not;

  @override
  List<Object?> get props => [equals, not];
  @override
  Map<String, dynamic> toJson() => _$NestedBoolNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PromotionPlanListRelationFilter extends JsonSerializable
    with EquatableMixin {
  PromotionPlanListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory PromotionPlanListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PromotionPlanListRelationFilterFromJson(json);

  PromotionPlanWhereInput? every;

  PromotionPlanWhereInput? some;

  PromotionPlanWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() =>
      _$PromotionPlanListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PromotionPlanWhereInput extends JsonSerializable with EquatableMixin {
  PromotionPlanWhereInput({
    this.and,
    this.or,
    this.not,
    this.promotionPlanId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.title,
    this.text,
    this.price,
    this.validityPeriod,
    this.promotionRegionCid,
    this.promotionRegion,
    this.promotionPlanType,
    this.parentPromotionPlan,
    this.childPromotionPlan,
    this.adPromotion,
    this.userPromotion,
  });

  factory PromotionPlanWhereInput.fromJson(Map<String, dynamic> json) =>
      _$PromotionPlanWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<PromotionPlanWhereInput>? and;

  @JsonKey(name: 'OR')
  List<PromotionPlanWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<PromotionPlanWhereInput>? not;

  @JsonKey(name: 'promotion_plan_id')
  IntFilter? promotionPlanId;

  @JsonKey(name: 'created_at')
  DateTimeFilter? createdAt;

  @JsonKey(name: 'updated_at')
  DateTimeFilter? updatedAt;

  @JsonKey(name: 'deleted_at')
  DateTimeNullableFilter? deletedAt;

  StringFilter? title;

  StringFilter? text;

  DecimalFilter? price;

  @JsonKey(name: 'validity_period')
  IntFilter? validityPeriod;

  @JsonKey(name: 'promotion_region_cid')
  IntNullableFilter? promotionRegionCid;

  @JsonKey(name: 'promotion_region')
  CategoryRelationFilter? promotionRegion;

  @JsonKey(name: 'promotion_plan_type')
  IntFilter? promotionPlanType;

  @JsonKey(name: 'ParentPromotionPlan')
  PromotionPlanRelationListRelationFilter? parentPromotionPlan;

  @JsonKey(name: 'ChildPromotionPlan')
  PromotionPlanRelationListRelationFilter? childPromotionPlan;

  @JsonKey(name: 'AdPromotion')
  AdPromotionListRelationFilter? adPromotion;

  @JsonKey(name: 'UserPromotion')
  UserPromotionListRelationFilter? userPromotion;

  @override
  List<Object?> get props => [
        and,
        or,
        not,
        promotionPlanId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        price,
        validityPeriod,
        promotionRegionCid,
        promotionRegion,
        promotionPlanType,
        parentPromotionPlan,
        childPromotionPlan,
        adPromotion,
        userPromotion
      ];
  @override
  Map<String, dynamic> toJson() => _$PromotionPlanWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DecimalFilter extends JsonSerializable with EquatableMixin {
  DecimalFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DecimalFilter.fromJson(Map<String, dynamic> json) =>
      _$DecimalFilterFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? equals;

  @JsonKey(
      name: 'in',
      fromJson: fromGraphQLListNullableDecimalToDartListNullableDecimal,
      toJson: fromDartListNullableDecimalToGraphQLListNullableDecimal)
  List<Decimal>? kw$in;

  @JsonKey(
      fromJson: fromGraphQLListNullableDecimalToDartListNullableDecimal,
      toJson: fromDartListNullableDecimalToGraphQLListNullableDecimal)
  List<Decimal>? notIn;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? lt;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? lte;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? gt;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? gte;

  NestedDecimalFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$DecimalFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedDecimalFilter extends JsonSerializable with EquatableMixin {
  NestedDecimalFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDecimalFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDecimalFilterFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? equals;

  @JsonKey(
      name: 'in',
      fromJson: fromGraphQLListNullableDecimalToDartListNullableDecimal,
      toJson: fromDartListNullableDecimalToGraphQLListNullableDecimal)
  List<Decimal>? kw$in;

  @JsonKey(
      fromJson: fromGraphQLListNullableDecimalToDartListNullableDecimal,
      toJson: fromDartListNullableDecimalToGraphQLListNullableDecimal)
  List<Decimal>? notIn;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? lt;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? lte;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? gt;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? gte;

  NestedDecimalFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$NestedDecimalFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PromotionPlanRelationListRelationFilter extends JsonSerializable
    with EquatableMixin {
  PromotionPlanRelationListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory PromotionPlanRelationListRelationFilter.fromJson(
          Map<String, dynamic> json) =>
      _$PromotionPlanRelationListRelationFilterFromJson(json);

  PromotionPlanRelationWhereInput? every;

  PromotionPlanRelationWhereInput? some;

  PromotionPlanRelationWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() =>
      _$PromotionPlanRelationListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PromotionPlanRelationWhereInput extends JsonSerializable
    with EquatableMixin {
  PromotionPlanRelationWhereInput({
    this.and,
    this.or,
    this.not,
    this.parentPromotionPlanId,
    this.parentPromotionPlan,
    this.childPromotionPlanId,
    this.childPromotionPlan,
    this.count,
    this.reccurence,
  });

  factory PromotionPlanRelationWhereInput.fromJson(Map<String, dynamic> json) =>
      _$PromotionPlanRelationWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<PromotionPlanRelationWhereInput>? and;

  @JsonKey(name: 'OR')
  List<PromotionPlanRelationWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<PromotionPlanRelationWhereInput>? not;

  @JsonKey(name: 'parent_promotion_plan_id')
  IntFilter? parentPromotionPlanId;

  @JsonKey(name: 'parent_promotion_plan')
  PromotionPlanRelationFilter? parentPromotionPlan;

  @JsonKey(name: 'child_promotion_plan_id')
  IntFilter? childPromotionPlanId;

  @JsonKey(name: 'child_promotion_plan')
  PromotionPlanRelationFilter? childPromotionPlan;

  IntFilter? count;

  IntFilter? reccurence;

  @override
  List<Object?> get props => [
        and,
        or,
        not,
        parentPromotionPlanId,
        parentPromotionPlan,
        childPromotionPlanId,
        childPromotionPlan,
        count,
        reccurence
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$PromotionPlanRelationWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PromotionPlanRelationFilter extends JsonSerializable with EquatableMixin {
  PromotionPlanRelationFilter({
    this.kw$is,
    this.isNot,
  });

  factory PromotionPlanRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$PromotionPlanRelationFilterFromJson(json);

  @JsonKey(name: 'is')
  PromotionPlanWhereInput? kw$is;

  PromotionPlanWhereInput? isNot;

  @override
  List<Object?> get props => [kw$is, isNot];
  @override
  Map<String, dynamic> toJson() => _$PromotionPlanRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdPromotionListRelationFilter extends JsonSerializable
    with EquatableMixin {
  AdPromotionListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory AdPromotionListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AdPromotionListRelationFilterFromJson(json);

  AdPromotionWhereInput? every;

  AdPromotionWhereInput? some;

  AdPromotionWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() => _$AdPromotionListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdPromotionWhereInput extends JsonSerializable with EquatableMixin {
  AdPromotionWhereInput({
    this.and,
    this.or,
    this.not,
    this.promotionPlanId,
    this.promotionPlan,
    this.adId,
    this.ad,
    this.userSub,
    this.user,
    this.validFrom,
    this.validTo,
    this.transactionId,
  });

  factory AdPromotionWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AdPromotionWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<AdPromotionWhereInput>? and;

  @JsonKey(name: 'OR')
  List<AdPromotionWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<AdPromotionWhereInput>? not;

  @JsonKey(name: 'promotion_plan_id')
  IntFilter? promotionPlanId;

  @JsonKey(name: 'promotion_plan')
  PromotionPlanRelationFilter? promotionPlan;

  @JsonKey(name: 'ad_id')
  IntFilter? adId;

  AdRelationFilter? ad;

  @JsonKey(name: 'user_sub')
  StringFilter? userSub;

  UserRelationFilter? user;

  @JsonKey(name: 'valid_from')
  DateTimeNullableFilter? validFrom;

  @JsonKey(name: 'valid_to')
  DateTimeNullableFilter? validTo;

  @JsonKey(name: 'transaction_id')
  StringNullableFilter? transactionId;

  @override
  List<Object?> get props => [
        and,
        or,
        not,
        promotionPlanId,
        promotionPlan,
        adId,
        ad,
        userSub,
        user,
        validFrom,
        validTo,
        transactionId
      ];
  @override
  Map<String, dynamic> toJson() => _$AdPromotionWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserPromotionListRelationFilter extends JsonSerializable
    with EquatableMixin {
  UserPromotionListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory UserPromotionListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UserPromotionListRelationFilterFromJson(json);

  UserPromotionWhereInput? every;

  UserPromotionWhereInput? some;

  UserPromotionWhereInput? none;

  @override
  List<Object?> get props => [every, some, none];
  @override
  Map<String, dynamic> toJson() =>
      _$UserPromotionListRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserPromotionWhereInput extends JsonSerializable with EquatableMixin {
  UserPromotionWhereInput({
    this.and,
    this.or,
    this.not,
    this.promotionPlanId,
    this.promotionPlan,
    this.userSub,
    this.user,
    this.validFrom,
    this.validTo,
    this.transactionId,
  });

  factory UserPromotionWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserPromotionWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<UserPromotionWhereInput>? and;

  @JsonKey(name: 'OR')
  List<UserPromotionWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<UserPromotionWhereInput>? not;

  @JsonKey(name: 'promotion_plan_id')
  IntFilter? promotionPlanId;

  @JsonKey(name: 'promotion_plan')
  PromotionPlanRelationFilter? promotionPlan;

  @JsonKey(name: 'user_sub')
  StringFilter? userSub;

  UserRelationFilter? user;

  @JsonKey(name: 'valid_from')
  DateTimeNullableFilter? validFrom;

  @JsonKey(name: 'valid_to')
  DateTimeNullableFilter? validTo;

  @JsonKey(name: 'transaction_id')
  StringNullableFilter? transactionId;

  @override
  List<Object?> get props => [
        and,
        or,
        not,
        promotionPlanId,
        promotionPlan,
        userSub,
        user,
        validFrom,
        validTo,
        transactionId
      ];
  @override
  Map<String, dynamic> toJson() => _$UserPromotionWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdAutoRelationFilter extends JsonSerializable with EquatableMixin {
  AdAutoRelationFilter({
    this.kw$is,
    this.isNot,
  });

  factory AdAutoRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AdAutoRelationFilterFromJson(json);

  @JsonKey(name: 'is')
  AdAutoWhereInput? kw$is;

  AdAutoWhereInput? isNot;

  @override
  List<Object?> get props => [kw$is, isNot];
  @override
  Map<String, dynamic> toJson() => _$AdAutoRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdHouseRelationFilter extends JsonSerializable with EquatableMixin {
  AdHouseRelationFilter({
    this.kw$is,
    this.isNot,
  });

  factory AdHouseRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$AdHouseRelationFilterFromJson(json);

  @JsonKey(name: 'is')
  AdHouseWhereInput? kw$is;

  AdHouseWhereInput? isNot;

  @override
  List<Object?> get props => [kw$is, isNot];
  @override
  Map<String, dynamic> toJson() => _$AdHouseRelationFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AdHouseWhereInput extends JsonSerializable with EquatableMixin {
  AdHouseWhereInput({
    this.and,
    this.or,
    this.not,
    this.adHouseId,
    this.adId,
    this.ad,
    this.meters,
  });

  factory AdHouseWhereInput.fromJson(Map<String, dynamic> json) =>
      _$AdHouseWhereInputFromJson(json);

  @JsonKey(name: 'AND')
  List<AdHouseWhereInput>? and;

  @JsonKey(name: 'OR')
  List<AdHouseWhereInput>? or;

  @JsonKey(name: 'NOT')
  List<AdHouseWhereInput>? not;

  @JsonKey(name: 'ad_house_id')
  IntFilter? adHouseId;

  @JsonKey(name: 'ad_id')
  IntFilter? adId;

  AdRelationFilter? ad;

  IntNullableFilter? meters;

  @override
  List<Object?> get props => [and, or, not, adHouseId, adId, ad, meters];
  @override
  Map<String, dynamic> toJson() => _$AdHouseWhereInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DecimalNullableFilter extends JsonSerializable with EquatableMixin {
  DecimalNullableFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DecimalNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$DecimalNullableFilterFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? equals;

  @JsonKey(
      name: 'in',
      fromJson: fromGraphQLListNullableDecimalToDartListNullableDecimal,
      toJson: fromDartListNullableDecimalToGraphQLListNullableDecimal)
  List<Decimal>? kw$in;

  @JsonKey(
      fromJson: fromGraphQLListNullableDecimalToDartListNullableDecimal,
      toJson: fromDartListNullableDecimalToGraphQLListNullableDecimal)
  List<Decimal>? notIn;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? lt;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? lte;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? gt;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? gte;

  NestedDecimalNullableFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$DecimalNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class NestedDecimalNullableFilter extends JsonSerializable with EquatableMixin {
  NestedDecimalNullableFilter({
    this.equals,
    this.kw$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDecimalNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDecimalNullableFilterFromJson(json);

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? equals;

  @JsonKey(
      name: 'in',
      fromJson: fromGraphQLListNullableDecimalToDartListNullableDecimal,
      toJson: fromDartListNullableDecimalToGraphQLListNullableDecimal)
  List<Decimal>? kw$in;

  @JsonKey(
      fromJson: fromGraphQLListNullableDecimalToDartListNullableDecimal,
      toJson: fromDartListNullableDecimalToGraphQLListNullableDecimal)
  List<Decimal>? notIn;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? lt;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? lte;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? gt;

  @JsonKey(
      fromJson: fromGraphQLDecimalNullableToDartDecimalNullable,
      toJson: fromDartDecimalNullableToGraphQLDecimalNullable)
  Decimal? gte;

  NestedDecimalNullableFilter? not;

  @override
  List<Object?> get props => [equals, kw$in, notIn, lt, lte, gt, gte, not];
  @override
  Map<String, dynamic> toJson() => _$NestedDecimalNullableFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllFilesByAdId$Query$Ad$File extends JsonSerializable
    with EquatableMixin, FileFragmentMixin {
  FindAllFilesByAdId$Query$Ad$File();

  factory FindAllFilesByAdId$Query$Ad$File.fromJson(
          Map<String, dynamic> json) =>
      _$FindAllFilesByAdId$Query$Ad$FileFromJson(json);

  @override
  List<Object?> get props =>
      [$$typename, fileId, filename, filesize, code, path];
  @override
  Map<String, dynamic> toJson() =>
      _$FindAllFilesByAdId$Query$Ad$FileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllFilesByAdId$Query$Ad extends JsonSerializable with EquatableMixin {
  FindAllFilesByAdId$Query$Ad();

  factory FindAllFilesByAdId$Query$Ad.fromJson(Map<String, dynamic> json) =>
      _$FindAllFilesByAdId$Query$AdFromJson(json);

  @JsonKey(name: 'ad_id')
  late String adId;

  List<FindAllFilesByAdId$Query$Ad$File>? files;

  @override
  List<Object?> get props => [adId, files];
  @override
  Map<String, dynamic> toJson() => _$FindAllFilesByAdId$Query$AdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllFilesByAdId$Query extends JsonSerializable with EquatableMixin {
  FindAllFilesByAdId$Query();

  factory FindAllFilesByAdId$Query.fromJson(Map<String, dynamic> json) =>
      _$FindAllFilesByAdId$QueryFromJson(json);

  FindAllFilesByAdId$Query$Ad? findUniqueAd;

  @override
  List<Object?> get props => [findUniqueAd];
  @override
  Map<String, dynamic> toJson() => _$FindAllFilesByAdId$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindTrendingAds$Query$Ad extends JsonSerializable
    with EquatableMixin, AdWithAdAutoFragmentMixin {
  FindTrendingAds$Query$Ad();

  factory FindTrendingAds$Query$Ad.fromJson(Map<String, dynamic> json) =>
      _$FindTrendingAds$Query$AdFromJson(json);

  @override
  List<Object?> get props => [
        $$typename,
        adId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        coordsLatitude,
        coordsLongitude,
        coordsRadius,
        address,
        priceEurocent,
        priceRating,
        files,
        adAuto
      ];
  @override
  Map<String, dynamic> toJson() => _$FindTrendingAds$Query$AdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindTrendingAds$Query extends JsonSerializable with EquatableMixin {
  FindTrendingAds$Query();

  factory FindTrendingAds$Query.fromJson(Map<String, dynamic> json) =>
      _$FindTrendingAds$QueryFromJson(json);

  late List<FindTrendingAds$Query$Ad> findAllAds;

  @override
  List<Object?> get props => [findAllAds];
  @override
  Map<String, dynamic> toJson() => _$FindTrendingAds$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllCategories$Query$Category extends JsonSerializable
    with EquatableMixin, CategoryFragmentMixin {
  FindAllCategories$Query$Category();

  factory FindAllCategories$Query$Category.fromJson(
          Map<String, dynamic> json) =>
      _$FindAllCategories$Query$CategoryFromJson(json);

  @override
  List<Object?> get props =>
      [$$typename, categoryId, name, parentCategoryId, code, icon, weight];
  @override
  Map<String, dynamic> toJson() =>
      _$FindAllCategories$Query$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllCategories$Query extends JsonSerializable with EquatableMixin {
  FindAllCategories$Query();

  factory FindAllCategories$Query.fromJson(Map<String, dynamic> json) =>
      _$FindAllCategories$QueryFromJson(json);

  late List<FindAllCategories$Query$Category> findAllCategories;

  @override
  List<Object?> get props => [findAllCategories];
  @override
  Map<String, dynamic> toJson() => _$FindAllCategories$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllCategoriesByParentId$Query$Category extends JsonSerializable
    with EquatableMixin, CategoryFragmentMixin {
  FindAllCategoriesByParentId$Query$Category();

  factory FindAllCategoriesByParentId$Query$Category.fromJson(
          Map<String, dynamic> json) =>
      _$FindAllCategoriesByParentId$Query$CategoryFromJson(json);

  @override
  List<Object?> get props =>
      [$$typename, categoryId, name, parentCategoryId, code, icon, weight];
  @override
  Map<String, dynamic> toJson() =>
      _$FindAllCategoriesByParentId$Query$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllCategoriesByParentId$Query extends JsonSerializable
    with EquatableMixin {
  FindAllCategoriesByParentId$Query();

  factory FindAllCategoriesByParentId$Query.fromJson(
          Map<String, dynamic> json) =>
      _$FindAllCategoriesByParentId$QueryFromJson(json);

  late List<FindAllCategoriesByParentId$Query$Category> findAllCategories;

  @override
  List<Object?> get props => [findAllCategories];
  @override
  Map<String, dynamic> toJson() =>
      _$FindAllCategoriesByParentId$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindCategoryByCode$Query$Category extends JsonSerializable
    with EquatableMixin, CategoryFragmentMixin {
  FindCategoryByCode$Query$Category();

  factory FindCategoryByCode$Query$Category.fromJson(
          Map<String, dynamic> json) =>
      _$FindCategoryByCode$Query$CategoryFromJson(json);

  @override
  List<Object?> get props =>
      [$$typename, categoryId, name, parentCategoryId, code, icon, weight];
  @override
  Map<String, dynamic> toJson() =>
      _$FindCategoryByCode$Query$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindCategoryByCode$Query extends JsonSerializable with EquatableMixin {
  FindCategoryByCode$Query();

  factory FindCategoryByCode$Query.fromJson(Map<String, dynamic> json) =>
      _$FindCategoryByCode$QueryFromJson(json);

  FindCategoryByCode$Query$Category? findOneCategory;

  @override
  List<Object?> get props => [findOneCategory];
  @override
  Map<String, dynamic> toJson() => _$FindCategoryByCode$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindCategoryByName$Query$Category extends JsonSerializable
    with EquatableMixin, CategoryFragmentMixin {
  FindCategoryByName$Query$Category();

  factory FindCategoryByName$Query$Category.fromJson(
          Map<String, dynamic> json) =>
      _$FindCategoryByName$Query$CategoryFromJson(json);

  @override
  List<Object?> get props =>
      [$$typename, categoryId, name, parentCategoryId, code, icon, weight];
  @override
  Map<String, dynamic> toJson() =>
      _$FindCategoryByName$Query$CategoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindCategoryByName$Query extends JsonSerializable with EquatableMixin {
  FindCategoryByName$Query();

  factory FindCategoryByName$Query.fromJson(Map<String, dynamic> json) =>
      _$FindCategoryByName$QueryFromJson(json);

  FindCategoryByName$Query$Category? findOneCategory;

  @override
  List<Object?> get props => [findOneCategory];
  @override
  Map<String, dynamic> toJson() => _$FindCategoryByName$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToFavorites$Mutation$ListAd extends JsonSerializable
    with EquatableMixin {
  AddToFavorites$Mutation$ListAd();

  factory AddToFavorites$Mutation$ListAd.fromJson(Map<String, dynamic> json) =>
      _$AddToFavorites$Mutation$ListAdFromJson(json);

  @JsonKey(name: 'ad_id')
  late int adId;

  @override
  List<Object?> get props => [adId];
  @override
  Map<String, dynamic> toJson() => _$AddToFavorites$Mutation$ListAdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class AddToFavorites$Mutation extends JsonSerializable with EquatableMixin {
  AddToFavorites$Mutation();

  factory AddToFavorites$Mutation.fromJson(Map<String, dynamic> json) =>
      _$AddToFavorites$MutationFromJson(json);

  AddToFavorites$Mutation$ListAd? addToFavorites;

  @override
  List<Object?> get props => [addToFavorites];
  @override
  Map<String, dynamic> toJson() => _$AddToFavorites$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateList$Mutation$List extends JsonSerializable with EquatableMixin {
  CreateList$Mutation$List();

  factory CreateList$Mutation$List.fromJson(Map<String, dynamic> json) =>
      _$CreateList$Mutation$ListFromJson(json);

  @JsonKey(name: 'list_id')
  late String listId;

  @JsonKey(name: 'list_type')
  late int listType;

  late String title;

  @override
  List<Object?> get props => [listId, listType, title];
  @override
  Map<String, dynamic> toJson() => _$CreateList$Mutation$ListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateList$Mutation extends JsonSerializable with EquatableMixin {
  CreateList$Mutation();

  factory CreateList$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateList$MutationFromJson(json);

  late CreateList$Mutation$List createList;

  @override
  List<Object?> get props => [createList];
  @override
  Map<String, dynamic> toJson() => _$CreateList$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateListAd$Mutation$ListAd extends JsonSerializable
    with EquatableMixin {
  CreateListAd$Mutation$ListAd();

  factory CreateListAd$Mutation$ListAd.fromJson(Map<String, dynamic> json) =>
      _$CreateListAd$Mutation$ListAdFromJson(json);

  @JsonKey(name: 'ad_id')
  late int adId;

  @override
  List<Object?> get props => [adId];
  @override
  Map<String, dynamic> toJson() => _$CreateListAd$Mutation$ListAdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateListAd$Mutation extends JsonSerializable with EquatableMixin {
  CreateListAd$Mutation();

  factory CreateListAd$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateListAd$MutationFromJson(json);

  CreateListAd$Mutation$ListAd? createListAd;

  @override
  List<Object?> get props => [createListAd];
  @override
  Map<String, dynamic> toJson() => _$CreateListAd$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllLists$Query$List extends JsonSerializable with EquatableMixin {
  FindAllLists$Query$List();

  factory FindAllLists$Query$List.fromJson(Map<String, dynamic> json) =>
      _$FindAllLists$Query$ListFromJson(json);

  @JsonKey(name: 'list_id')
  late String listId;

  @JsonKey(name: 'list_type')
  late int listType;

  late String title;

  @override
  List<Object?> get props => [listId, listType, title];
  @override
  Map<String, dynamic> toJson() => _$FindAllLists$Query$ListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllLists$Query extends JsonSerializable with EquatableMixin {
  FindAllLists$Query();

  factory FindAllLists$Query.fromJson(Map<String, dynamic> json) =>
      _$FindAllLists$QueryFromJson(json);

  late List<FindAllLists$Query$List> findMyLists;

  @override
  List<Object?> get props => [findMyLists];
  @override
  Map<String, dynamic> toJson() => _$FindAllLists$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllListsByListType$Query$List extends JsonSerializable
    with EquatableMixin {
  FindAllListsByListType$Query$List();

  factory FindAllListsByListType$Query$List.fromJson(
          Map<String, dynamic> json) =>
      _$FindAllListsByListType$Query$ListFromJson(json);

  @JsonKey(name: 'list_id')
  late String listId;

  @JsonKey(name: 'list_type')
  late int listType;

  late String title;

  @JsonKey(name: 'search_params')
  late String searchParams;

  @override
  List<Object?> get props => [listId, listType, title, searchParams];
  @override
  Map<String, dynamic> toJson() =>
      _$FindAllListsByListType$Query$ListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindAllListsByListType$Query extends JsonSerializable
    with EquatableMixin {
  FindAllListsByListType$Query();

  factory FindAllListsByListType$Query.fromJson(Map<String, dynamic> json) =>
      _$FindAllListsByListType$QueryFromJson(json);

  late List<FindAllListsByListType$Query$List> findMyLists;

  @override
  List<Object?> get props => [findMyLists];
  @override
  Map<String, dynamic> toJson() => _$FindAllListsByListType$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindFavoriteAdsList$Query$List$ListAd$Ad extends JsonSerializable
    with EquatableMixin {
  FindFavoriteAdsList$Query$List$ListAd$Ad();

  factory FindFavoriteAdsList$Query$List$ListAd$Ad.fromJson(
          Map<String, dynamic> json) =>
      _$FindFavoriteAdsList$Query$List$ListAd$AdFromJson(json);

  @JsonKey(name: 'ad_id')
  late String adId;

  @override
  List<Object?> get props => [adId];
  @override
  Map<String, dynamic> toJson() =>
      _$FindFavoriteAdsList$Query$List$ListAd$AdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindFavoriteAdsList$Query$List$ListAd extends JsonSerializable
    with EquatableMixin {
  FindFavoriteAdsList$Query$List$ListAd();

  factory FindFavoriteAdsList$Query$List$ListAd.fromJson(
          Map<String, dynamic> json) =>
      _$FindFavoriteAdsList$Query$List$ListAdFromJson(json);

  late FindFavoriteAdsList$Query$List$ListAd$Ad ad;

  @override
  List<Object?> get props => [ad];
  @override
  Map<String, dynamic> toJson() =>
      _$FindFavoriteAdsList$Query$List$ListAdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindFavoriteAdsList$Query$List extends JsonSerializable
    with EquatableMixin {
  FindFavoriteAdsList$Query$List();

  factory FindFavoriteAdsList$Query$List.fromJson(Map<String, dynamic> json) =>
      _$FindFavoriteAdsList$Query$ListFromJson(json);

  @JsonKey(name: 'list_id')
  late String listId;

  @JsonKey(name: 'ListAd')
  List<FindFavoriteAdsList$Query$List$ListAd>? listAd;

  @override
  List<Object?> get props => [listId, listAd];
  @override
  Map<String, dynamic> toJson() => _$FindFavoriteAdsList$Query$ListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindFavoriteAdsList$Query extends JsonSerializable with EquatableMixin {
  FindFavoriteAdsList$Query();

  factory FindFavoriteAdsList$Query.fromJson(Map<String, dynamic> json) =>
      _$FindFavoriteAdsList$QueryFromJson(json);

  FindFavoriteAdsList$Query$List? findOneList;

  @override
  List<Object?> get props => [findOneList];
  @override
  Map<String, dynamic> toJson() => _$FindFavoriteAdsList$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindListWithAdsByListId$Query$List$ListAd$Ad extends JsonSerializable
    with EquatableMixin, AdWithAdAutoFragmentMixin {
  FindListWithAdsByListId$Query$List$ListAd$Ad();

  factory FindListWithAdsByListId$Query$List$ListAd$Ad.fromJson(
          Map<String, dynamic> json) =>
      _$FindListWithAdsByListId$Query$List$ListAd$AdFromJson(json);

  @override
  List<Object?> get props => [
        $$typename,
        adId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        coordsLatitude,
        coordsLongitude,
        coordsRadius,
        address,
        priceEurocent,
        priceRating,
        files,
        adAuto
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$FindListWithAdsByListId$Query$List$ListAd$AdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindListWithAdsByListId$Query$List$ListAd extends JsonSerializable
    with EquatableMixin {
  FindListWithAdsByListId$Query$List$ListAd();

  factory FindListWithAdsByListId$Query$List$ListAd.fromJson(
          Map<String, dynamic> json) =>
      _$FindListWithAdsByListId$Query$List$ListAdFromJson(json);

  @JsonKey(name: 'ad_id')
  late int adId;

  late FindListWithAdsByListId$Query$List$ListAd$Ad ad;

  @override
  List<Object?> get props => [adId, ad];
  @override
  Map<String, dynamic> toJson() =>
      _$FindListWithAdsByListId$Query$List$ListAdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindListWithAdsByListId$Query$List extends JsonSerializable
    with EquatableMixin {
  FindListWithAdsByListId$Query$List();

  factory FindListWithAdsByListId$Query$List.fromJson(
          Map<String, dynamic> json) =>
      _$FindListWithAdsByListId$Query$ListFromJson(json);

  @JsonKey(name: 'list_id')
  late String listId;

  @JsonKey(name: 'list_type')
  late int listType;

  late String title;

  @JsonKey(name: 'ListAd')
  List<FindListWithAdsByListId$Query$List$ListAd>? listAd;

  @override
  List<Object?> get props => [listId, listType, title, listAd];
  @override
  Map<String, dynamic> toJson() =>
      _$FindListWithAdsByListId$Query$ListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindListWithAdsByListId$Query extends JsonSerializable
    with EquatableMixin {
  FindListWithAdsByListId$Query();

  factory FindListWithAdsByListId$Query.fromJson(Map<String, dynamic> json) =>
      _$FindListWithAdsByListId$QueryFromJson(json);

  FindListWithAdsByListId$Query$List? findOneList;

  @override
  List<Object?> get props => [findOneList];
  @override
  Map<String, dynamic> toJson() => _$FindListWithAdsByListId$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindListWithAdsByListType$Query$List$ListAd$Ad extends JsonSerializable
    with EquatableMixin, AdWithAdAutoFragmentMixin {
  FindListWithAdsByListType$Query$List$ListAd$Ad();

  factory FindListWithAdsByListType$Query$List$ListAd$Ad.fromJson(
          Map<String, dynamic> json) =>
      _$FindListWithAdsByListType$Query$List$ListAd$AdFromJson(json);

  @override
  List<Object?> get props => [
        $$typename,
        adId,
        createdAt,
        updatedAt,
        deletedAt,
        title,
        text,
        coordsLatitude,
        coordsLongitude,
        coordsRadius,
        address,
        priceEurocent,
        priceRating,
        files,
        adAuto
      ];
  @override
  Map<String, dynamic> toJson() =>
      _$FindListWithAdsByListType$Query$List$ListAd$AdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindListWithAdsByListType$Query$List$ListAd extends JsonSerializable
    with EquatableMixin {
  FindListWithAdsByListType$Query$List$ListAd();

  factory FindListWithAdsByListType$Query$List$ListAd.fromJson(
          Map<String, dynamic> json) =>
      _$FindListWithAdsByListType$Query$List$ListAdFromJson(json);

  @JsonKey(name: 'ad_id')
  late int adId;

  late FindListWithAdsByListType$Query$List$ListAd$Ad ad;

  @override
  List<Object?> get props => [adId, ad];
  @override
  Map<String, dynamic> toJson() =>
      _$FindListWithAdsByListType$Query$List$ListAdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindListWithAdsByListType$Query$List extends JsonSerializable
    with EquatableMixin {
  FindListWithAdsByListType$Query$List();

  factory FindListWithAdsByListType$Query$List.fromJson(
          Map<String, dynamic> json) =>
      _$FindListWithAdsByListType$Query$ListFromJson(json);

  @JsonKey(name: 'list_id')
  late String listId;

  @JsonKey(name: 'list_type')
  late int listType;

  late String title;

  @JsonKey(name: 'ListAd')
  List<FindListWithAdsByListType$Query$List$ListAd>? listAd;

  @override
  List<Object?> get props => [listId, listType, title, listAd];
  @override
  Map<String, dynamic> toJson() =>
      _$FindListWithAdsByListType$Query$ListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FindListWithAdsByListType$Query extends JsonSerializable
    with EquatableMixin {
  FindListWithAdsByListType$Query();

  factory FindListWithAdsByListType$Query.fromJson(Map<String, dynamic> json) =>
      _$FindListWithAdsByListType$QueryFromJson(json);

  FindListWithAdsByListType$Query$List? findOneList;

  @override
  List<Object?> get props => [findOneList];
  @override
  Map<String, dynamic> toJson() =>
      _$FindListWithAdsByListType$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveFromList$Mutation$ListAd extends JsonSerializable
    with EquatableMixin {
  RemoveFromList$Mutation$ListAd();

  factory RemoveFromList$Mutation$ListAd.fromJson(Map<String, dynamic> json) =>
      _$RemoveFromList$Mutation$ListAdFromJson(json);

  @JsonKey(name: 'ad_id')
  late int adId;

  @override
  List<Object?> get props => [adId];
  @override
  Map<String, dynamic> toJson() => _$RemoveFromList$Mutation$ListAdToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveFromList$Mutation extends JsonSerializable with EquatableMixin {
  RemoveFromList$Mutation();

  factory RemoveFromList$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RemoveFromList$MutationFromJson(json);

  RemoveFromList$Mutation$ListAd? removeListAd;

  @override
  List<Object?> get props => [removeListAd];
  @override
  Map<String, dynamic> toJson() => _$RemoveFromList$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class RemoveList$Mutation extends JsonSerializable with EquatableMixin {
  RemoveList$Mutation();

  factory RemoveList$Mutation.fromJson(Map<String, dynamic> json) =>
      _$RemoveList$MutationFromJson(json);

  int? removeList;

  @override
  List<Object?> get props => [removeList];
  @override
  Map<String, dynamic> toJson() => _$RemoveList$MutationToJson(this);
}

enum SortOrder {
  @JsonValue('asc')
  asc,
  @JsonValue('desc')
  desc,
  @JsonValue('ARTEMIS_UNKNOWN')
  artemisUnknown,
}

@JsonSerializable(explicitToJson: true)
class CreateNewAdArguments extends JsonSerializable with EquatableMixin {
  CreateNewAdArguments({
    required this.title,
    required this.text,
    this.price,
    required this.year,
    this.km,
    this.power_kw,
    required this.path,
    required this.filename,
    required this.code,
    required this.filesize,
    this.brand_id,
    this.model_id,
    this.variant_id,
    this.bodyType_id,
    this.condition_id,
    this.fuelType_id,
    this.transmission_id,
  });

  @override
  factory CreateNewAdArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateNewAdArgumentsFromJson(json);

  late String title;

  late String text;

  final int? price;

  late int year;

  final int? km;

  final int? power_kw;

  late String path;

  late String filename;

  late String code;

  late int filesize;

  final int? brand_id;

  final int? model_id;

  final int? variant_id;

  final int? bodyType_id;

  final int? condition_id;

  final int? fuelType_id;

  final int? transmission_id;

  @override
  List<Object?> get props => [
        title,
        text,
        price,
        year,
        km,
        power_kw,
        path,
        filename,
        code,
        filesize,
        brand_id,
        model_id,
        variant_id,
        bodyType_id,
        condition_id,
        fuelType_id,
        transmission_id
      ];
  @override
  Map<String, dynamic> toJson() => _$CreateNewAdArgumentsToJson(this);
}

final CREATE_NEW_AD_MUTATION_DOCUMENT_OPERATION_NAME = 'createNewAd';
final CREATE_NEW_AD_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createNewAd'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'title')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'text')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'price')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'year')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'km')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'power_kw')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'path')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filename')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filesize')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'brand_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'model_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'variant_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'bodyType_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'condition_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fuelType_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'transmission_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createAd'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'title'),
                value: VariableNode(name: NameNode(value: 'title')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'text'),
                value: VariableNode(name: NameNode(value: 'text')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'price_eurocent'),
                value: VariableNode(name: NameNode(value: 'price')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'ad_auto'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'create'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'year'),
                        value: VariableNode(name: NameNode(value: 'year')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'km'),
                        value: VariableNode(name: NameNode(value: 'km')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'power_kw'),
                        value: VariableNode(name: NameNode(value: 'power_kw')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'make'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'connect'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'category_id'),
                                value: VariableNode(
                                    name: NameNode(value: 'brand_id')),
                              )
                            ]),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'model'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'connect'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'category_id'),
                                value: VariableNode(
                                    name: NameNode(value: 'model_id')),
                              )
                            ]),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'variant'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'connect'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'category_id'),
                                value: VariableNode(
                                    name: NameNode(value: 'variant_id')),
                              )
                            ]),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'body_type'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'connect'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'category_id'),
                                value: VariableNode(
                                    name: NameNode(value: 'bodyType_id')),
                              )
                            ]),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'condition_type'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'connect'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'category_id'),
                                value: VariableNode(
                                    name: NameNode(value: 'condition_id')),
                              )
                            ]),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'fuel_type'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'connect'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'category_id'),
                                value: VariableNode(
                                    name: NameNode(value: 'fuelType_id')),
                              )
                            ]),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'transmission_type'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'connect'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'category_id'),
                                value: VariableNode(
                                    name: NameNode(value: 'transmission_id')),
                              )
                            ]),
                          )
                        ]),
                      ),
                    ]),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'files'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'create'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'code'),
                        value: VariableNode(name: NameNode(value: 'code')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'filename'),
                        value: VariableNode(name: NameNode(value: 'filename')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'path'),
                        value: VariableNode(name: NameNode(value: 'path')),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'filesize'),
                        value: VariableNode(name: NameNode(value: 'filesize')),
                      ),
                    ]),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'ad_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'created_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'updated_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'deleted_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'text'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'coords_latitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'coords_longitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'coords_radius'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price_eurocent'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ad_auto'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'condition_type_cid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'vehicle_type_cid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'fuel_type_cid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'transmission_type_cid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'make_cid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'model_cid'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'year'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'km'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'power_kw'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'files'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'file_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'filename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'filesize'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'code'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'path'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class CreateNewAdMutation
    extends GraphQLQuery<CreateNewAd$Mutation, CreateNewAdArguments> {
  CreateNewAdMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_NEW_AD_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_NEW_AD_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateNewAdArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateNewAd$Mutation parse(Map<String, dynamic> json) =>
      CreateNewAd$Mutation.fromJson(json);
}

final FIND_ALL_ADS_QUERY_DOCUMENT_OPERATION_NAME = 'findAllAds';
final FIND_ALL_ADS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findAllAds'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findAllAds'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adWithAdAutoFragment'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adWithAdAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Ad'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ad_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'created_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updated_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'deleted_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'text'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_latitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_longitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_radius'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_eurocent'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_rating'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'files'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'path'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'ad_auto'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adAutoFragment'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'AdAuto'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'condition_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicle_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fuel_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'transmission_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'make_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'model_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'year'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'km'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'power_kw'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'body_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'variant_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'registered_until'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'doors_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'seats_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_first_owner'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_service_book_available'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_vehicle_garaged'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'engine_displacement_cm3'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'emission_class_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'battery_capacity_kwh'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'conditioning_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_exterior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_interior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindAllAdsQuery extends GraphQLQuery<FindAllAds$Query, JsonSerializable> {
  FindAllAdsQuery();

  @override
  final DocumentNode document = FIND_ALL_ADS_QUERY_DOCUMENT;

  @override
  final String operationName = FIND_ALL_ADS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  FindAllAds$Query parse(Map<String, dynamic> json) =>
      FindAllAds$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindAllAdsFilterArguments extends JsonSerializable with EquatableMixin {
  FindAllAdsFilterArguments({
    this.minimum_price,
    this.maximum_price,
    this.AdAutoConditionType,
    this.AdAutoFuelType,
    this.AdAutoMakeType,
    this.AdAutoTransmissionType,
    this.AdAutoBodyType,
    this.AdAutoVehicleType,
    this.AdAutoModel,
    this.AdAutoVariant,
    this.order,
  });

  @override
  factory FindAllAdsFilterArguments.fromJson(Map<String, dynamic> json) =>
      _$FindAllAdsFilterArgumentsFromJson(json);

  final int? minimum_price;

  final int? maximum_price;

  final int? AdAutoConditionType;

  final int? AdAutoFuelType;

  final int? AdAutoMakeType;

  final int? AdAutoTransmissionType;

  final int? AdAutoBodyType;

  final int? AdAutoVehicleType;

  final int? AdAutoModel;

  final int? AdAutoVariant;

  final List<AdOrderByWithRelationInput>? order;

  @override
  List<Object?> get props => [
        minimum_price,
        maximum_price,
        AdAutoConditionType,
        AdAutoFuelType,
        AdAutoMakeType,
        AdAutoTransmissionType,
        AdAutoBodyType,
        AdAutoVehicleType,
        AdAutoModel,
        AdAutoVariant,
        order
      ];
  @override
  Map<String, dynamic> toJson() => _$FindAllAdsFilterArgumentsToJson(this);
}

final FIND_ALL_ADS_FILTER_QUERY_DOCUMENT_OPERATION_NAME = 'findAllAdsFilter';
final FIND_ALL_ADS_FILTER_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findAllAdsFilter'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'minimum_price')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'maximum_price')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'AdAutoConditionType')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'AdAutoFuelType')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'AdAutoMakeType')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'AdAutoTransmissionType')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'AdAutoBodyType')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'AdAutoVehicleType')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'AdAutoModel')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'AdAutoVariant')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'AdOrderByWithRelationInput'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findAllAds'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'price_eurocent'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'gte'),
                    value: VariableNode(name: NameNode(value: 'minimum_price')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'lte'),
                    value: VariableNode(name: NameNode(value: 'maximum_price')),
                  ),
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'ad_auto'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'is'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'condition_type_cid'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'equals'),
                            value: VariableNode(
                                name: NameNode(value: 'AdAutoConditionType')),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'fuel_type_cid'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'equals'),
                            value: VariableNode(
                                name: NameNode(value: 'AdAutoFuelType')),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'make_cid'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'equals'),
                            value: VariableNode(
                                name: NameNode(value: 'AdAutoMakeType')),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'transmission_type_cid'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'equals'),
                            value: VariableNode(
                                name:
                                    NameNode(value: 'AdAutoTransmissionType')),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'body_type_cid'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'equals'),
                            value: VariableNode(
                                name: NameNode(value: 'AdAutoBodyType')),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'vehicle_type_cid'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'equals'),
                            value: VariableNode(
                                name: NameNode(value: 'AdAutoVehicleType')),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'model_cid'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'equals'),
                            value: VariableNode(
                                name: NameNode(value: 'AdAutoModel')),
                          )
                        ]),
                      ),
                      ObjectFieldNode(
                        name: NameNode(value: 'variant_cid'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'equals'),
                            value: VariableNode(
                                name: NameNode(value: 'AdAutoVariant')),
                          )
                        ]),
                      ),
                    ]),
                  )
                ]),
              ),
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'order')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adWithAdAutoFragment'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adWithAdAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Ad'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ad_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'created_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updated_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'deleted_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'text'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_latitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_longitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_radius'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_eurocent'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_rating'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'files'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'path'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'ad_auto'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adAutoFragment'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'AdAuto'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'condition_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicle_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fuel_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'transmission_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'make_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'model_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'year'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'km'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'power_kw'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'body_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'variant_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'registered_until'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'doors_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'seats_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_first_owner'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_service_book_available'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_vehicle_garaged'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'engine_displacement_cm3'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'emission_class_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'battery_capacity_kwh'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'conditioning_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_exterior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_interior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindAllAdsFilterQuery
    extends GraphQLQuery<FindAllAdsFilter$Query, FindAllAdsFilterArguments> {
  FindAllAdsFilterQuery({required this.variables});

  @override
  final DocumentNode document = FIND_ALL_ADS_FILTER_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_ALL_ADS_FILTER_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindAllAdsFilterArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindAllAdsFilter$Query parse(Map<String, dynamic> json) =>
      FindAllAdsFilter$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindAllAdsMyAdsArguments extends JsonSerializable with EquatableMixin {
  FindAllAdsMyAdsArguments({
    this.userSub,
    this.isSold,
  });

  @override
  factory FindAllAdsMyAdsArguments.fromJson(Map<String, dynamic> json) =>
      _$FindAllAdsMyAdsArgumentsFromJson(json);

  final String? userSub;

  final bool? isSold;

  @override
  List<Object?> get props => [userSub, isSold];
  @override
  Map<String, dynamic> toJson() => _$FindAllAdsMyAdsArgumentsToJson(this);
}

final FIND_ALL_ADS_MY_ADS_QUERY_DOCUMENT_OPERATION_NAME = 'findAllAdsMyAds';
final FIND_ALL_ADS_MY_ADS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findAllAdsMyAds'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userSub')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isSold')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findAllAds'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'user_sub'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'equals'),
                    value: VariableNode(name: NameNode(value: 'userSub')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'is_sold'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'equals'),
                    value: VariableNode(name: NameNode(value: 'isSold')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adWithAdAutoFragment'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adWithAdAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Ad'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ad_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'created_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updated_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'deleted_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'text'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_latitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_longitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_radius'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_eurocent'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_rating'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'files'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'path'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'ad_auto'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adAutoFragment'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'AdAuto'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'condition_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicle_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fuel_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'transmission_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'make_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'model_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'year'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'km'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'power_kw'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'body_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'variant_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'registered_until'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'doors_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'seats_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_first_owner'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_service_book_available'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_vehicle_garaged'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'engine_displacement_cm3'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'emission_class_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'battery_capacity_kwh'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'conditioning_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_exterior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_interior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindAllAdsMyAdsQuery
    extends GraphQLQuery<FindAllAdsMyAds$Query, FindAllAdsMyAdsArguments> {
  FindAllAdsMyAdsQuery({required this.variables});

  @override
  final DocumentNode document = FIND_ALL_ADS_MY_ADS_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_ALL_ADS_MY_ADS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindAllAdsMyAdsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindAllAdsMyAds$Query parse(Map<String, dynamic> json) =>
      FindAllAdsMyAds$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindAllAdsWhereArguments extends JsonSerializable with EquatableMixin {
  FindAllAdsWhereArguments({this.where});

  @override
  factory FindAllAdsWhereArguments.fromJson(Map<String, dynamic> json) =>
      _$FindAllAdsWhereArgumentsFromJson(json);

  final AdWhereInput? where;

  @override
  List<Object?> get props => [where];
  @override
  Map<String, dynamic> toJson() => _$FindAllAdsWhereArgumentsToJson(this);
}

final FIND_ALL_ADS_WHERE_QUERY_DOCUMENT_OPERATION_NAME = 'findAllAdsWhere';
final FIND_ALL_ADS_WHERE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findAllAdsWhere'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'where')),
        type: NamedTypeNode(
          name: NameNode(value: 'AdWhereInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findAllAds'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: VariableNode(name: NameNode(value: 'where')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adWithAdAutoFragment'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adWithAdAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Ad'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ad_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'created_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updated_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'deleted_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'text'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_latitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_longitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_radius'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_eurocent'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_rating'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'files'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'path'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'ad_auto'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adAutoFragment'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'AdAuto'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'condition_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicle_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fuel_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'transmission_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'make_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'model_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'year'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'km'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'power_kw'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'body_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'variant_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'registered_until'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'doors_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'seats_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_first_owner'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_service_book_available'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_vehicle_garaged'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'engine_displacement_cm3'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'emission_class_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'battery_capacity_kwh'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'conditioning_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_exterior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_interior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindAllAdsWhereQuery
    extends GraphQLQuery<FindAllAdsWhere$Query, FindAllAdsWhereArguments> {
  FindAllAdsWhereQuery({required this.variables});

  @override
  final DocumentNode document = FIND_ALL_ADS_WHERE_QUERY_DOCUMENT;

  @override
  final String operationName = FIND_ALL_ADS_WHERE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindAllAdsWhereArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindAllAdsWhere$Query parse(Map<String, dynamic> json) =>
      FindAllAdsWhere$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindAllFilesByAdIdArguments extends JsonSerializable with EquatableMixin {
  FindAllFilesByAdIdArguments({required this.ad_id});

  @override
  factory FindAllFilesByAdIdArguments.fromJson(Map<String, dynamic> json) =>
      _$FindAllFilesByAdIdArgumentsFromJson(json);

  late int ad_id;

  @override
  List<Object?> get props => [ad_id];
  @override
  Map<String, dynamic> toJson() => _$FindAllFilesByAdIdArgumentsToJson(this);
}

final FIND_ALL_FILES_BY_AD_ID_QUERY_DOCUMENT_OPERATION_NAME =
    'findAllFilesByAdId';
final FIND_ALL_FILES_BY_AD_ID_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findAllFilesByAdId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ad_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findUniqueAd'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'ad_id'),
                value: VariableNode(name: NameNode(value: 'ad_id')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'ad_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'files'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'fileFragment'),
                directives: [],
              )
            ]),
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'fileFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'File'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'file_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'filename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'filesize'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'path'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindAllFilesByAdIdQuery extends GraphQLQuery<FindAllFilesByAdId$Query,
    FindAllFilesByAdIdArguments> {
  FindAllFilesByAdIdQuery({required this.variables});

  @override
  final DocumentNode document = FIND_ALL_FILES_BY_AD_ID_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_ALL_FILES_BY_AD_ID_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindAllFilesByAdIdArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindAllFilesByAdId$Query parse(Map<String, dynamic> json) =>
      FindAllFilesByAdId$Query.fromJson(json);
}

final FIND_TRENDING_ADS_QUERY_DOCUMENT_OPERATION_NAME = 'findTrendingAds';
final FIND_TRENDING_ADS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findTrendingAds'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findAllAds'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'take'),
            value: IntValueNode(value: '6'),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'created_at'),
                value: EnumValueNode(name: NameNode(value: 'desc')),
              )
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adWithAdAutoFragment'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adWithAdAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Ad'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ad_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'created_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updated_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'deleted_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'text'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_latitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_longitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_radius'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_eurocent'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_rating'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'files'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'path'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'ad_auto'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adAutoFragment'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'AdAuto'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'condition_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicle_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fuel_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'transmission_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'make_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'model_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'year'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'km'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'power_kw'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'body_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'variant_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'registered_until'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'doors_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'seats_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_first_owner'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_service_book_available'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_vehicle_garaged'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'engine_displacement_cm3'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'emission_class_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'battery_capacity_kwh'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'conditioning_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_exterior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_interior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindTrendingAdsQuery
    extends GraphQLQuery<FindTrendingAds$Query, JsonSerializable> {
  FindTrendingAdsQuery();

  @override
  final DocumentNode document = FIND_TRENDING_ADS_QUERY_DOCUMENT;

  @override
  final String operationName = FIND_TRENDING_ADS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  FindTrendingAds$Query parse(Map<String, dynamic> json) =>
      FindTrendingAds$Query.fromJson(json);
}

final FIND_ALL_CATEGORIES_QUERY_DOCUMENT_OPERATION_NAME = 'findAllCategories';
final FIND_ALL_CATEGORIES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findAllCategories'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findAllCategories'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'categoryFragment'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'categoryFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Category'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'category_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'parent_category_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'icon'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'weight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindAllCategoriesQuery
    extends GraphQLQuery<FindAllCategories$Query, JsonSerializable> {
  FindAllCategoriesQuery();

  @override
  final DocumentNode document = FIND_ALL_CATEGORIES_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_ALL_CATEGORIES_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  FindAllCategories$Query parse(Map<String, dynamic> json) =>
      FindAllCategories$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindAllCategoriesByParentIdArguments extends JsonSerializable
    with EquatableMixin {
  FindAllCategoriesByParentIdArguments({this.parent_category_id});

  @override
  factory FindAllCategoriesByParentIdArguments.fromJson(
          Map<String, dynamic> json) =>
      _$FindAllCategoriesByParentIdArgumentsFromJson(json);

  final int? parent_category_id;

  @override
  List<Object?> get props => [parent_category_id];
  @override
  Map<String, dynamic> toJson() =>
      _$FindAllCategoriesByParentIdArgumentsToJson(this);
}

final FIND_ALL_CATEGORIES_BY_PARENT_ID_QUERY_DOCUMENT_OPERATION_NAME =
    'findAllCategoriesByParentId';
final FIND_ALL_CATEGORIES_BY_PARENT_ID_QUERY_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findAllCategoriesByParentId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parent_category_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findAllCategories'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'parent_category_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'equals'),
                    value: VariableNode(
                        name: NameNode(value: 'parent_category_id')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'categoryFragment'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'categoryFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Category'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'category_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'parent_category_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'icon'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'weight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindAllCategoriesByParentIdQuery extends GraphQLQuery<
    FindAllCategoriesByParentId$Query, FindAllCategoriesByParentIdArguments> {
  FindAllCategoriesByParentIdQuery({required this.variables});

  @override
  final DocumentNode document = FIND_ALL_CATEGORIES_BY_PARENT_ID_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_ALL_CATEGORIES_BY_PARENT_ID_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindAllCategoriesByParentIdArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindAllCategoriesByParentId$Query parse(Map<String, dynamic> json) =>
      FindAllCategoriesByParentId$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindCategoryByCodeArguments extends JsonSerializable with EquatableMixin {
  FindCategoryByCodeArguments({this.code});

  @override
  factory FindCategoryByCodeArguments.fromJson(Map<String, dynamic> json) =>
      _$FindCategoryByCodeArgumentsFromJson(json);

  final String? code;

  @override
  List<Object?> get props => [code];
  @override
  Map<String, dynamic> toJson() => _$FindCategoryByCodeArgumentsToJson(this);
}

final FIND_CATEGORY_BY_CODE_QUERY_DOCUMENT_OPERATION_NAME =
    'findCategoryByCode';
final FIND_CATEGORY_BY_CODE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findCategoryByCode'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findOneCategory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'code'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'equals'),
                    value: VariableNode(name: NameNode(value: 'code')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'categoryFragment'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'categoryFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Category'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'category_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'parent_category_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'icon'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'weight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindCategoryByCodeQuery extends GraphQLQuery<FindCategoryByCode$Query,
    FindCategoryByCodeArguments> {
  FindCategoryByCodeQuery({required this.variables});

  @override
  final DocumentNode document = FIND_CATEGORY_BY_CODE_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_CATEGORY_BY_CODE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindCategoryByCodeArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindCategoryByCode$Query parse(Map<String, dynamic> json) =>
      FindCategoryByCode$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindCategoryByNameArguments extends JsonSerializable with EquatableMixin {
  FindCategoryByNameArguments({this.name});

  @override
  factory FindCategoryByNameArguments.fromJson(Map<String, dynamic> json) =>
      _$FindCategoryByNameArgumentsFromJson(json);

  final String? name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() => _$FindCategoryByNameArgumentsToJson(this);
}

final FIND_CATEGORY_BY_NAME_QUERY_DOCUMENT_OPERATION_NAME =
    'findCategoryByName';
final FIND_CATEGORY_BY_NAME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findCategoryByName'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findOneCategory'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'name'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'equals'),
                    value: VariableNode(name: NameNode(value: 'name')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'categoryFragment'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'categoryFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Category'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'category_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'parent_category_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'code'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'icon'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'weight'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindCategoryByNameQuery extends GraphQLQuery<FindCategoryByName$Query,
    FindCategoryByNameArguments> {
  FindCategoryByNameQuery({required this.variables});

  @override
  final DocumentNode document = FIND_CATEGORY_BY_NAME_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_CATEGORY_BY_NAME_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindCategoryByNameArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindCategoryByName$Query parse(Map<String, dynamic> json) =>
      FindCategoryByName$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class AddToFavoritesArguments extends JsonSerializable with EquatableMixin {
  AddToFavoritesArguments({this.ad_id});

  @override
  factory AddToFavoritesArguments.fromJson(Map<String, dynamic> json) =>
      _$AddToFavoritesArgumentsFromJson(json);

  final int? ad_id;

  @override
  List<Object?> get props => [ad_id];
  @override
  Map<String, dynamic> toJson() => _$AddToFavoritesArgumentsToJson(this);
}

final ADD_TO_FAVORITES_MUTATION_DOCUMENT_OPERATION_NAME = 'addToFavorites';
final ADD_TO_FAVORITES_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'addToFavorites'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ad_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'addToFavorites'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'ad_id'),
                value: VariableNode(name: NameNode(value: 'ad_id')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'ad_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class AddToFavoritesMutation
    extends GraphQLQuery<AddToFavorites$Mutation, AddToFavoritesArguments> {
  AddToFavoritesMutation({required this.variables});

  @override
  final DocumentNode document = ADD_TO_FAVORITES_MUTATION_DOCUMENT;

  @override
  final String operationName =
      ADD_TO_FAVORITES_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final AddToFavoritesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  AddToFavorites$Mutation parse(Map<String, dynamic> json) =>
      AddToFavorites$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateListArguments extends JsonSerializable with EquatableMixin {
  CreateListArguments({
    this.list_type,
    required this.title,
    required this.search_params,
    this.user_sub,
  });

  @override
  factory CreateListArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateListArgumentsFromJson(json);

  final int? list_type;

  late String title;

  @JsonKey(
      fromJson: fromGraphQLJsonToDartString,
      toJson: fromDartStringToGraphQLJson)
  late String search_params;

  final String? user_sub;

  @override
  List<Object?> get props => [list_type, title, search_params, user_sub];
  @override
  Map<String, dynamic> toJson() => _$CreateListArgumentsToJson(this);
}

final CREATE_LIST_MUTATION_DOCUMENT_OPERATION_NAME = 'createList';
final CREATE_LIST_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'list_type')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'title')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search_params')),
        type: NamedTypeNode(
          name: NameNode(value: 'JSON'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'user_sub')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'list_type'),
                value: VariableNode(name: NameNode(value: 'list_type')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'title'),
                value: VariableNode(name: NameNode(value: 'title')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'search_params'),
                value: VariableNode(name: NameNode(value: 'search_params')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'user'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'connect'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'user_sub'),
                        value: VariableNode(name: NameNode(value: 'user_sub')),
                      )
                    ]),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'list_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'list_type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class CreateListMutation
    extends GraphQLQuery<CreateList$Mutation, CreateListArguments> {
  CreateListMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_LIST_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_LIST_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateListArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateList$Mutation parse(Map<String, dynamic> json) =>
      CreateList$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateListAdArguments extends JsonSerializable with EquatableMixin {
  CreateListAdArguments({
    this.list_id,
    this.ad_id,
  });

  @override
  factory CreateListAdArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateListAdArgumentsFromJson(json);

  final int? list_id;

  final int? ad_id;

  @override
  List<Object?> get props => [list_id, ad_id];
  @override
  Map<String, dynamic> toJson() => _$CreateListAdArgumentsToJson(this);
}

final CREATE_LIST_AD_MUTATION_DOCUMENT_OPERATION_NAME = 'createListAd';
final CREATE_LIST_AD_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createListAd'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'list_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ad_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createListAd'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'data'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'list'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'connect'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'list_id'),
                        value: VariableNode(name: NameNode(value: 'list_id')),
                      )
                    ]),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'ad'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'connect'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'ad_id'),
                        value: VariableNode(name: NameNode(value: 'ad_id')),
                      )
                    ]),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'ad_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class CreateListAdMutation
    extends GraphQLQuery<CreateListAd$Mutation, CreateListAdArguments> {
  CreateListAdMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_LIST_AD_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_LIST_AD_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateListAdArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateListAd$Mutation parse(Map<String, dynamic> json) =>
      CreateListAd$Mutation.fromJson(json);
}

final FIND_ALL_LISTS_QUERY_DOCUMENT_OPERATION_NAME = 'findAllLists';
final FIND_ALL_LISTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findAllLists'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findMyLists'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'list_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'list_type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class FindAllListsQuery
    extends GraphQLQuery<FindAllLists$Query, JsonSerializable> {
  FindAllListsQuery();

  @override
  final DocumentNode document = FIND_ALL_LISTS_QUERY_DOCUMENT;

  @override
  final String operationName = FIND_ALL_LISTS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  FindAllLists$Query parse(Map<String, dynamic> json) =>
      FindAllLists$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindAllListsByListTypeArguments extends JsonSerializable
    with EquatableMixin {
  FindAllListsByListTypeArguments({this.list_type});

  @override
  factory FindAllListsByListTypeArguments.fromJson(Map<String, dynamic> json) =>
      _$FindAllListsByListTypeArgumentsFromJson(json);

  final int? list_type;

  @override
  List<Object?> get props => [list_type];
  @override
  Map<String, dynamic> toJson() =>
      _$FindAllListsByListTypeArgumentsToJson(this);
}

final FIND_ALL_LISTS_BY_LIST_TYPE_QUERY_DOCUMENT_OPERATION_NAME =
    'findAllListsByListType';
final FIND_ALL_LISTS_BY_LIST_TYPE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findAllListsByListType'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'list_type')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findMyLists'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'list_type'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'equals'),
                    value: VariableNode(name: NameNode(value: 'list_type')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'list_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'list_type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'search_params'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class FindAllListsByListTypeQuery extends GraphQLQuery<
    FindAllListsByListType$Query, FindAllListsByListTypeArguments> {
  FindAllListsByListTypeQuery({required this.variables});

  @override
  final DocumentNode document = FIND_ALL_LISTS_BY_LIST_TYPE_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_ALL_LISTS_BY_LIST_TYPE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindAllListsByListTypeArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindAllListsByListType$Query parse(Map<String, dynamic> json) =>
      FindAllListsByListType$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindFavoriteAdsListArguments extends JsonSerializable
    with EquatableMixin {
  FindFavoriteAdsListArguments({this.list_type});

  @override
  factory FindFavoriteAdsListArguments.fromJson(Map<String, dynamic> json) =>
      _$FindFavoriteAdsListArgumentsFromJson(json);

  final int? list_type;

  @override
  List<Object?> get props => [list_type];
  @override
  Map<String, dynamic> toJson() => _$FindFavoriteAdsListArgumentsToJson(this);
}

final FIND_FAVORITE_ADS_LIST_QUERY_DOCUMENT_OPERATION_NAME =
    'findFavoriteAdsList';
final FIND_FAVORITE_ADS_LIST_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findFavoriteAdsList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'list_type')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findOneList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'list_type'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'equals'),
                    value: VariableNode(name: NameNode(value: 'list_type')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'list_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ListAd'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'ad'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'ad_id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  )
                ]),
              )
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class FindFavoriteAdsListQuery extends GraphQLQuery<FindFavoriteAdsList$Query,
    FindFavoriteAdsListArguments> {
  FindFavoriteAdsListQuery({required this.variables});

  @override
  final DocumentNode document = FIND_FAVORITE_ADS_LIST_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_FAVORITE_ADS_LIST_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindFavoriteAdsListArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindFavoriteAdsList$Query parse(Map<String, dynamic> json) =>
      FindFavoriteAdsList$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindListWithAdsByListIdArguments extends JsonSerializable
    with EquatableMixin {
  FindListWithAdsByListIdArguments({this.list_id});

  @override
  factory FindListWithAdsByListIdArguments.fromJson(
          Map<String, dynamic> json) =>
      _$FindListWithAdsByListIdArgumentsFromJson(json);

  final int? list_id;

  @override
  List<Object?> get props => [list_id];
  @override
  Map<String, dynamic> toJson() =>
      _$FindListWithAdsByListIdArgumentsToJson(this);
}

final FIND_LIST_WITH_ADS_BY_LIST_ID_QUERY_DOCUMENT_OPERATION_NAME =
    'findListWithAdsByListId';
final FIND_LIST_WITH_ADS_BY_LIST_ID_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findListWithAdsByListId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'list_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findOneList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'list_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'equals'),
                    value: VariableNode(name: NameNode(value: 'list_id')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'list_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'list_type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ListAd'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'ad_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'ad'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'adWithAdAutoFragment'),
                    directives: [],
                  )
                ]),
              ),
            ]),
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adWithAdAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Ad'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ad_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'created_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updated_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'deleted_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'text'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_latitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_longitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_radius'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_eurocent'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_rating'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'files'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'path'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'ad_auto'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adAutoFragment'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'AdAuto'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'condition_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicle_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fuel_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'transmission_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'make_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'model_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'year'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'km'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'power_kw'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'body_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'variant_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'registered_until'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'doors_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'seats_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_first_owner'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_service_book_available'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_vehicle_garaged'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'engine_displacement_cm3'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'emission_class_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'battery_capacity_kwh'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'conditioning_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_exterior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_interior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindListWithAdsByListIdQuery extends GraphQLQuery<
    FindListWithAdsByListId$Query, FindListWithAdsByListIdArguments> {
  FindListWithAdsByListIdQuery({required this.variables});

  @override
  final DocumentNode document = FIND_LIST_WITH_ADS_BY_LIST_ID_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_LIST_WITH_ADS_BY_LIST_ID_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindListWithAdsByListIdArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindListWithAdsByListId$Query parse(Map<String, dynamic> json) =>
      FindListWithAdsByListId$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class FindListWithAdsByListTypeArguments extends JsonSerializable
    with EquatableMixin {
  FindListWithAdsByListTypeArguments({this.list_type});

  @override
  factory FindListWithAdsByListTypeArguments.fromJson(
          Map<String, dynamic> json) =>
      _$FindListWithAdsByListTypeArgumentsFromJson(json);

  final int? list_type;

  @override
  List<Object?> get props => [list_type];
  @override
  Map<String, dynamic> toJson() =>
      _$FindListWithAdsByListTypeArgumentsToJson(this);
}

final FIND_LIST_WITH_ADS_BY_LIST_TYPE_QUERY_DOCUMENT_OPERATION_NAME =
    'findListWithAdsByListType';
final FIND_LIST_WITH_ADS_BY_LIST_TYPE_QUERY_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'findListWithAdsByListType'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'list_type')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'findOneList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'list_type'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'equals'),
                    value: VariableNode(name: NameNode(value: 'list_type')),
                  )
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'list_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'list_type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'ListAd'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'ad_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'ad'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'adWithAdAutoFragment'),
                    directives: [],
                  )
                ]),
              ),
            ]),
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adWithAdAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Ad'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'ad_id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'created_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'updated_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'deleted_at'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'title'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'text'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_latitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_longitude'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'coords_radius'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'address'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_eurocent'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'price_rating'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'files'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'path'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'ad_auto'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'adAutoFragment'),
            directives: [],
          )
        ]),
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'adAutoFragment'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'AdAuto'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'condition_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'vehicle_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'fuel_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'transmission_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'make_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'model_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'year'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'km'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'power_kw'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'body_type_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'variant_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'registered_until'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'doors_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'seats_num'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_first_owner'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_service_book_available'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'is_vehicle_garaged'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'engine_displacement_cm3'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'emission_class_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'battery_capacity_kwh'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'conditioning_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_exterior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'color_interior_cid'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class FindListWithAdsByListTypeQuery extends GraphQLQuery<
    FindListWithAdsByListType$Query, FindListWithAdsByListTypeArguments> {
  FindListWithAdsByListTypeQuery({required this.variables});

  @override
  final DocumentNode document = FIND_LIST_WITH_ADS_BY_LIST_TYPE_QUERY_DOCUMENT;

  @override
  final String operationName =
      FIND_LIST_WITH_ADS_BY_LIST_TYPE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final FindListWithAdsByListTypeArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  FindListWithAdsByListType$Query parse(Map<String, dynamic> json) =>
      FindListWithAdsByListType$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RemoveFromListArguments extends JsonSerializable with EquatableMixin {
  RemoveFromListArguments({
    required this.ad_id,
    required this.list_id,
  });

  @override
  factory RemoveFromListArguments.fromJson(Map<String, dynamic> json) =>
      _$RemoveFromListArgumentsFromJson(json);

  late int ad_id;

  late int list_id;

  @override
  List<Object?> get props => [ad_id, list_id];
  @override
  Map<String, dynamic> toJson() => _$RemoveFromListArgumentsToJson(this);
}

final REMOVE_FROM_LIST_MUTATION_DOCUMENT_OPERATION_NAME = 'removeFromList';
final REMOVE_FROM_LIST_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'removeFromList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ad_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'list_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'removeListAd'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'ad_id_list_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'ad_id'),
                    value: VariableNode(name: NameNode(value: 'ad_id')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'list_id'),
                    value: VariableNode(name: NameNode(value: 'list_id')),
                  ),
                ]),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'ad_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      )
    ]),
  )
]);

class RemoveFromListMutation
    extends GraphQLQuery<RemoveFromList$Mutation, RemoveFromListArguments> {
  RemoveFromListMutation({required this.variables});

  @override
  final DocumentNode document = REMOVE_FROM_LIST_MUTATION_DOCUMENT;

  @override
  final String operationName =
      REMOVE_FROM_LIST_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final RemoveFromListArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  RemoveFromList$Mutation parse(Map<String, dynamic> json) =>
      RemoveFromList$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class RemoveListArguments extends JsonSerializable with EquatableMixin {
  RemoveListArguments({required this.list_id});

  @override
  factory RemoveListArguments.fromJson(Map<String, dynamic> json) =>
      _$RemoveListArgumentsFromJson(json);

  late int list_id;

  @override
  List<Object?> get props => [list_id];
  @override
  Map<String, dynamic> toJson() => _$RemoveListArgumentsToJson(this);
}

final REMOVE_LIST_MUTATION_DOCUMENT_OPERATION_NAME = 'removeList';
final REMOVE_LIST_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'removeList'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'list_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'removeList'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'list_id'),
                value: VariableNode(name: NameNode(value: 'list_id')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: null,
      )
    ]),
  )
]);

class RemoveListMutation
    extends GraphQLQuery<RemoveList$Mutation, RemoveListArguments> {
  RemoveListMutation({required this.variables});

  @override
  final DocumentNode document = REMOVE_LIST_MUTATION_DOCUMENT;

  @override
  final String operationName = REMOVE_LIST_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final RemoveListArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  RemoveList$Mutation parse(Map<String, dynamic> json) =>
      RemoveList$Mutation.fromJson(json);
}
