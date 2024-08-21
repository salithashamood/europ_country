import 'package:flutter/cupertino.dart';

class TableRowWidget extends StatelessWidget {
  final String value;
  const TableRowWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(value)],
      ),
    );
  }
}
