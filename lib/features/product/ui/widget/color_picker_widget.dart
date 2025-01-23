import 'package:flutter/material.dart';

class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({super.key, required this.colors});

  final List<String> colors;

  @override
  State<ColorPickerWidget> createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: getColorItems(),
      ),
    );
  }

  List<Widget> getColorItems() {
    List<Widget> colorList = [];
    for (String color in widget.colors) {
      colorList.add(
        Text(color),
      );
    }
    return colorList;
  }
}
