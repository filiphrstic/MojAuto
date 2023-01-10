import 'package:i18next/i18next.dart';
import '../data/graphql/schema.generated.graphql.dart';

//TO BE DELETED

class FilterParamsDropdownPrice {
  late String hint;
  late List<String> dropdownItems;

  FilterParamsDropdownPrice(String minmax, I18Next i18next) {
    switch (minmax) {
      case "min":
        hint = i18next.t("i18n:minPrice");
        dropdownItems = ["0", "10000", "20000", "40000"];
        break;
      case "max":
        hint = i18next.t("i18n:maxPrice");
        dropdownItems = ["30000", "40000", "50000", "100000000"];
        break;
      default:
    }
  }
}

class FilterParamsDropdownBasic {
  late String hint;
  late String category;
  List<String>? dropdownItems;
  List<FindAllCategories$Query$Category>? categoriesList;

  FilterParamsDropdownBasic(String option, I18Next i18next, {List<String>? items, List<FindAllCategories$Query$Category>? categories}) {
    switch (option) {
      case "brand":
        category = option;
        hint = i18next.t("i18n:brand");
        categoriesList = categories;
        break;
      case "model":
        category = option;
        hint = i18next.t("i18n:model");
        categoriesList = categories;
        break;
      case "bodyType":
        category = option;
        hint = i18next.t("i18n:bodyType");
        categoriesList = categories;
        break;
      case "variant":
        category = option;
        hint = i18next.t("i18n:variant");
        categoriesList = categories;
        break;
      case "condition":
        category = option;
        hint = i18next.t("i18n:condition");
        categoriesList = categories;
        break;
      case "vat":
        category = option;
        hint = i18next.t("i18n:vat");
        dropdownItems = ['Item'];
        break;
      case "fuelType":
        category = option;
        hint = i18next.t("i18n:fuelType");
        categoriesList = categories;
        break;
      case "transmission":
        category = option;
        hint = i18next.t("i18n:transmission");
        categoriesList = categories;
        break;
      case "year":
        category = option;
        hint = i18next.t("i18n:year");
        dropdownItems = ['< 1960', '1961 - 1970', '1971 - 1980', '1981 - 1990', '1991 - 2000', '2001 - 2010', '2011 - 2020', '2021 <'];
        break;
      case "milleage":
        category = option;
        hint = i18next.t("i18n:milleage");
        dropdownItems = ['< 50 000', '50 000 - 100 000', '100 000 - 150 000', '150 000 - 200 000', '200 000 <'];
        break;
      case "doors":
        category = option;
        hint = i18next.t("i18n:doors");
        dropdownItems = ['2/3', '4/5'];
        break;
      case "seats":
        category = option;
        hint = i18next.t("i18n:seats");
        dropdownItems = ['1-2', '3-4', '5-6', '7+'];
        break;
      case "country":
        category = option;
        hint = i18next.t("i18n:country");
        dropdownItems = items!.cast<String>();
        break;
      case "city":
        category = option;
        hint = i18next.t("i18n:city");
        dropdownItems = items!.cast<String>();
        break;
      case "radius":
        category = option;
        hint = i18next.t("i18n:radius");
        dropdownItems = ['Item'];
        break;
      default:
    }
  }
}

class FilterParamsDropdownTech {
  late String hint;
  late List<String> dropdownItems;

  FilterParamsDropdownTech(String option, I18Next i18next) {
    switch (option) {
      case "enginePower":
        hint = i18next.t("i18n:enginePower");
        dropdownItems = ['< 50', '51 - 100', '101 - 200', '200 - 300', '300 <'];
        break;
      case "cubicCapacity":
        hint = i18next.t("i18n:cubicCapacity");
        dropdownItems = ['< 2000', '2001 - 4000', '4001 - 6000', '6001 - 8000', '8001 <'];
        break;
      case "emissionClass":
        hint = i18next.t("i18n:emissionClass");
        dropdownItems = [
          'euro1',
          'euro2',
          'euro3',
          'euro4',
          'euro5',
          'euro6',
        ];
        break;
      default:
    }
  }
}

class FilterParamsDropdownBattery {
  late String hint;
  late List<String> dropdownItems;

  FilterParamsDropdownBattery(String option, I18Next i18next) {
    switch (option) {
      case "batteryKind":
        hint = i18next.t("i18n:batteryKind");
        dropdownItems = [];
        break;
      case "batteryCapacity":
        hint = i18next.t("i18n:batteryCapacity");
        dropdownItems = ['< 50', '51 - 100', '101 <'];
        break;
      default:
    }
  }
}

class FilterParamsCheckboxBody {
  late List<String> checkboxItems;

  FilterParamsCheckboxBody(I18Next i18next) {
    checkboxItems = [
      i18next.t("i18n:sedan"),
      i18next.t("i18n:coupe"),
      i18next.t("i18n:suv"),
      i18next.t("i18n:minivan"),
    ];
  }
}

class FilterParamsCheckboxOwnership {
  late List<String> checkboxItems;

  FilterParamsCheckboxOwnership(I18Next i18next) {
    checkboxItems = [
      i18next.t("i18n:firstOwner"),
      i18next.t("i18n:serviceBook"),
      i18next.t("i18n:garaged"),
    ];
  }
}

class FilterParamsCheckboxAirconditioning {
  late List<String> checkboxItems;

  FilterParamsCheckboxAirconditioning(I18Next i18next) {
    checkboxItems = [
      i18next.t("i18n:manual"),
      i18next.t("i18n:automatic"),
    ];
  }
}

class FilterParamsCheckboxExteriorColor {
  late List<String> checkboxItems;

  FilterParamsCheckboxExteriorColor(I18Next i18next) {
    checkboxItems = [
      i18next.t("i18n:color1"),
      i18next.t("i18n:color2"),
      i18next.t("i18n:color3"),
      i18next.t("i18n:color4"),
      i18next.t("i18n:color5"),
      i18next.t("i18n:color6"),
    ];
  }
}

class FilterParamsCheckboxInteriorColor {
  late List<String> checkboxItems;

  FilterParamsCheckboxInteriorColor(I18Next i18next) {
    checkboxItems = [
      i18next.t("i18n:color1"),
      i18next.t("i18n:color2"),
      i18next.t("i18n:color3"),
    ];
  }
}

class FilterParamsCheckboxFurnishing {
  late List<String> checkboxItems;

  FilterParamsCheckboxFurnishing(I18Next i18next) {
    checkboxItems = [
      i18next.t("i18n:heatedSeats"),
      i18next.t("i18n:seatCooling"),
      i18next.t("i18n:emailContSeats"),
      i18next.t("i18n:leather"),
      i18next.t("i18n:isofix"),
      i18next.t("i18n:skiBag"),
      i18next.t("i18n:emailWindowMovement"),
      i18next.t("i18n:centralLocking"),
      i18next.t("i18n:sunRoof"),
      i18next.t("i18n:powerSteering"),
      i18next.t("i18n:multifunctionSteeringWheel"),
      i18next.t("i18n:keylessSystem"),
      i18next.t("i18n:navigation"),
      i18next.t("i18n:headUpDisplay"),
      i18next.t("i18n:bluetooth"),
    ];
  }
}

class FilterParamsCheckboxSafety {
  late List<String> checkboxItems;

  FilterParamsCheckboxSafety(I18Next i18next) {
    checkboxItems = [
      i18next.t("i18n:absBrakes"),
      i18next.t("i18n:espSystem"),
      i18next.t("i18n:airBag"),
      i18next.t("i18n:cruiseControl"),
      i18next.t("i18n:activeCruiseControl"),
      i18next.t("i18n:xenonHeadlights"),
      i18next.t("i18n:rainSensor"),
      i18next.t("i18n:ledHeadlights"),
      i18next.t("i18n:vehicleMaintenanceBelt"),
      i18next.t("i18n:automaticEmergencyBraking"),
    ];
  }
}

class FilterParamsParking {
  late List<String> checkboxItems;

  FilterParamsParking(I18Next i18next) {
    checkboxItems = [
      i18next.t("i18n:parkingAssistant"),
      i18next.t("i18n:parkingCamera"),
      i18next.t("i18n:parkingSensors"),
    ];
  }
}

class FilterParamsCheckboxRest {
  late List<String> checkboxItems;

  FilterParamsCheckboxRest(I18Next i18next) {
    checkboxItems = [
      i18next.t("i18n:alloyWheels"),
      i18next.t("i18n:4x4Drive"),
      i18next.t("i18n:towingDevice"),
      i18next.t("i18n:roofSled"),
      i18next.t("i18n:adaptedToTheDisabled"),
    ];
  }
}
