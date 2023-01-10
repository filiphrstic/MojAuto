import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/themes.dart';

class CategoryPicker extends HookWidget {
  const CategoryPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Category picker
    final selectedCategory = useState(<bool>[true, false, false, false]);
    final selectedCategoryHelper = <bool>[true, false, false, false];

    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        ToggleButtons(
          onPressed: (int index) {
            for (int i = 0; i < selectedCategory.value.length; i++) {
              selectedCategoryHelper[i] = i == index;
            }
            selectedCategory.value = selectedCategoryHelper;
          },
          // making border big and transparent is a hack for adding spacing between toggle buttons
          borderWidth: 10,
          borderColor: Colors.transparent,
          selectedBorderColor: Colors.transparent,
          selectedColor: primaryColor,
          color: primaryColor,
          fillColor: orangeThemeColor,
          isSelected: selectedCategory.value,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: darkGrayBackgroundColor,
                  width: 1,
                ),
              ),
              height: 80,
              width: 80,
              alignment: Alignment.center,
              child: const FaIcon(
                FontAwesomeIcons.carSide,
                size: 35,
                color: darkGrayBackgroundColor,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: darkGrayBackgroundColor,
                  width: 1,
                ),
              ),
              height: 80,
              width: 80,
              alignment: Alignment.center,
              child: const FaIcon(
                FontAwesomeIcons.motorcycle,
                size: 35,
                color: darkGrayBackgroundColor,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: darkGrayBackgroundColor,
                  width: 1,
                ),
              ),
              height: 80,
              width: 80,
              alignment: Alignment.center,
              child: const FaIcon(
                FontAwesomeIcons.truck,
                size: 35,
                color: darkGrayBackgroundColor,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: darkGrayBackgroundColor,
                  width: 1,
                ),
              ),
              height: 80,
              width: 80,
              alignment: Alignment.center,
              child: const FaIcon(
                FontAwesomeIcons.caravan,
                size: 35,
                color: darkGrayBackgroundColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
