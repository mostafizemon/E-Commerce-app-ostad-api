import 'package:e_commerce_ostad_api/app/app_colors.dart';
import 'package:flutter/material.dart';

class QuantityIncDecButton extends StatefulWidget {
  const QuantityIncDecButton({super.key, required this.onChange});

  final Function(int) onChange;

  @override
  State<QuantityIncDecButton> createState() => _QuantityIncDecButtonState();
}

class _QuantityIncDecButtonState extends State<QuantityIncDecButton> {
  int _count = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildIconButton(
          icon: Icons.remove,
          onTap: () {
            if (_count > 1) {
              _count--;
              widget.onChange(_count);
              setState(() {});
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "${_count}",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        buildIconButton(
          icon: Icons.add,
          onTap: () {
            _count++;
            widget.onChange(_count);
            setState(() {});
          },
        ),
      ],
    );
  }

  Widget buildIconButton(
      {required IconData icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.themeColor,
          borderRadius: BorderRadius.circular(4),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(4),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
