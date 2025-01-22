import 'package:flutter/material.dart';

class AppbarActionButton extends StatelessWidget {
  const AppbarActionButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.shade100,
      child: Icon(icon),
    );
  }
}