import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../classes/category.dart';
import '../../utils/enums.dart';
import '../../widgets/filter/filter_builder/checkbox_filter_builder.dart';
import '../../widgets/filter/filter_builder/range_filter_builder.dart';
import '../../widgets/filter/filter_builder/select_filter_builder.dart';

class FilterGenerator extends HookWidget {
  //Here is stored every element that needs to be build like checkbox, dropdown, range
  final List<Category> filterElements;

  const FilterGenerator({Key? key, required this.filterElements}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: filterElements.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final filterElement = filterElements[index];
        switch (filterElement.vocabulary.inputType) {
          case InputType.select:
            {
              return SelectFilterBuilder(
                filterElement: filterElement,
              );
            }
          case InputType.checkbox:
            {
              return CheckboxFilterBuilder(
                filterElement: filterElement,
              );
            }
          case InputType.range:
            {
              return RangeFilterBuilder(
                filterElement: filterElement,
              );
            }
          default:
            return Container();
        }
      },
    );
  }
}
