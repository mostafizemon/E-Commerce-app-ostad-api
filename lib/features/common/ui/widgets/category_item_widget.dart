import 'package:e_commerce_ostad_api/features/product/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ProductListScreen.routename,
            arguments: "Electronics");
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.themeColor.withOpacity(.12),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(8),
            width: 75,
            height: 75,
            child: Icon(
              Icons.computer,
              size: 50,
              color: AppColors.themeColor,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "Electronics",
            style: TextStyle(
                color: AppColors.themeColor, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
