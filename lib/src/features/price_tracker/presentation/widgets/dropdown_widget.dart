import 'package:flutter/material.dart';

class PriceTrackerDropDownWidget extends StatelessWidget {
  const PriceTrackerDropDownWidget({
    super.key,
    required this.items,
    required this.onChange,
    required this.title,
  });
  final String title;
  final List<MapEntry<String, String>> items;
  final Function(String? value) onChange;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty == true) {
      return const SizedBox.shrink();
    }

    return Material(
      child: DropdownButtonFormField<String>(
        key: ValueKey(items),
        hint: Text(title),
        items: items
            .map((e) => DropdownMenuItem<String>(
                  key: ValueKey(e.key),
                  value: e.key,
                  child: Text(e.value),
                ))
            .toList(),
        onChanged: onChange,
      ),
    );
  }
}
