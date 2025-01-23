import 'package:e_commerce_ostad_api/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:e_commerce_ostad_api/features/common/ui/widgets/category_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryListScreen extends StatelessWidget {
  const CategoryListScreen({super.key});

  static const String routename = 'category_list_screen';

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        Get.find<MainBottomNavController>().moveToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Category List",
            style: TextStyle(fontSize: 24),
          ),
          leading: IconButton(
            onPressed: () {
              Get.find<MainBottomNavController>().moveToHome();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 16,
          ),
          itemBuilder: (context, index) {
            return FittedBox(
              child: CategoryItemWidget(),
            );
          },
        ),
      ),
    );
  }
}
