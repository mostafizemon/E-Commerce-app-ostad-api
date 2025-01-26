import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/ui/controllers/main_bottom_nav_controller.dart';
import '../../../common/ui/widgets/product_item_widget.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  static const String routename = "/wish_list_screen";
  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        Get.find<MainBottomNavController>().moveToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Wishlist"),
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
            crossAxisCount: 3,
            childAspectRatio: 0.7,
            crossAxisSpacing: 2,
            mainAxisSpacing: 4,
          ),
          itemBuilder: (context, index) {
            return ProductItemWidget();
          },
        ),
      ),
    );
  }
}
