import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../app/app_colors.dart';
import '../../../common/ui/controllers/main_bottom_nav_controller.dart';
import '../widget/cart_product_item_widget.dart';

class CartListScreen extends StatefulWidget {
  const CartListScreen({super.key});

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        Get.find<MainBottomNavController>().moveToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Cart"),
          leading: IconButton(
            onPressed: () {
              Get.find<MainBottomNavController>().moveToHome();
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return CartProductItemWidget();
                },
              ),
            ),
            buildPriceandCheckOutSection(textTheme),
          ],
        ),
      ),
    );
  }

  Container buildPriceandCheckOutSection(TextTheme textTheme) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.themeColor.withOpacity(0.15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Price",
                  style: textTheme.titleSmall,
                ),
                Text(
                  "\$100",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: AppColors.themeColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 120,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Check Out"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
