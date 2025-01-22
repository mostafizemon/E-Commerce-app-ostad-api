import 'package:flutter/material.dart';

class ProductsSearchBar extends StatelessWidget {
  const ProductsSearchBar({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
        fillColor: Colors.grey.shade200,
        filled: true,
        hintText: "Search",
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
        ),
      ),
    );
  }
}
