import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
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
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 16,
            );
          },
          itemCount: 10),
    );
  }
}
