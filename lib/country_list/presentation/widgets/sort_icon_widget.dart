import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class SortIconWidget extends StatelessWidget {
  final Function tapSortItem;
  const SortIconWidget({super.key, required this.tapSortItem});

  @override
  Widget build(BuildContext context) {
    List<String> filterFieldList = ["Population", "Name", "Capital"];
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: const Icon(
          Icons.short_text_sharp,
          size: 46,
        ),
        items: [
          ...filterFieldList.map(
                (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            ),
          ),
        ],
        onChanged: (value) => tapSortItem(value),
        dropdownStyleData: DropdownStyleData(
          width: 160,
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            // color: Colors.redAccent,
          ),
          offset: const Offset(0, 8),
        ),
        menuItemStyleData: const MenuItemStyleData(
          padding: EdgeInsets.only(left: 16, right: 16),
        ),
      ),
    );
  }
}
