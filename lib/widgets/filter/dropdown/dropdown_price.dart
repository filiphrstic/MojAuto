import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../classes/filter_parameters.dart';

class DropdownPrice extends HookWidget {
  final Function onChangePriceMin;
  final Function onChangePriceMax;
  final FilterParamsDropdownPrice minPrice;
  final FilterParamsDropdownPrice maxPrice;

  const DropdownPrice({
    super.key,
    required this.onChangePriceMin,
    required this.onChangePriceMax,
    required this.minPrice,
    required this.maxPrice,
  });

  @override
  Widget build(BuildContext context) {
    final Map<FilterParamsDropdownPrice, ValueNotifier> dropdownPricesMap = {
      minPrice: useState(null),
      maxPrice: useState(null),
    };

    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dropdownPricesMap.length,
      itemBuilder: (context, index) {
        final paramsPriceHook = dropdownPricesMap.values.elementAt(index);
        final paramsPriceObject = dropdownPricesMap.keys.elementAt(index);
        return SizedBox(
          width: MediaQuery.of(context).size.width / 2 - 20,
          child: DropdownButton(
            isExpanded: true,
            items: paramsPriceObject.dropdownItems.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (value) => {
              paramsPriceHook.value = value,
              if (index == 0)
                {
                  onChangePriceMin(
                    value.toString(),
                  ),
                }
              else if (index == 1)
                {
                  onChangePriceMax(
                    value.toString(),
                  ),
                }
            },
            value: paramsPriceHook.value,
            hint: Text(paramsPriceObject.hint),
          ),
        );
      },
    );
  }
}
