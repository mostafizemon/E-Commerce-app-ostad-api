import 'package:e_commerce_ostad_api/app/app_colors.dart';
import 'package:flutter/material.dart';

class SizePickerWidget extends StatefulWidget {
  const SizePickerWidget({super.key, required this.sizes, required this.onSizeSelected});

  final List<String> sizes;
  final Function(String) onSizeSelected;
  @override
  State<SizePickerWidget> createState() => _SizePickerWidgetState();
}

class _SizePickerWidgetState extends State<SizePickerWidget> {
  String? _selectedSize;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: getSizeItems(),
      ),
    );
  }

  List<Widget> getSizeItems() {
    List<Widget> colorList = [];
    for (String size in widget.sizes) {
      colorList.add(
        getColorItemWidget(
          name: size,
          onTap: () {
            _selectedSize = size;
            widget.onSizeSelected(_selectedSize!);
            setState(() {});
          },
          isSelected: _selectedSize == size,
        ),
      );
    }
    return colorList;
  }

  Widget getColorItemWidget(
      {required String name,
      required VoidCallback onTap,
      required bool isSelected}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 8),
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(),
          color: isSelected ? AppColors.themeColor : Colors.transparent,
        ),
        child: Text(
          name,
          style: TextStyle(color: isSelected ? Colors.white : null),
        ),
      ),
    );
  }
}
