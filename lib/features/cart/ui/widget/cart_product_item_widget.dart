import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';
import '../../../common/ui/widgets/quantity_inc_dec_button.dart';

class CartProductItemWidget extends StatelessWidget {
  const CartProductItemWidget({
    super.key,
  });



  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 1,
      color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
        child: Row(
          children: [
            Image.asset(
              "assets/images/shoe.png",
              width: 90,
              height: 90,
              fit: BoxFit.scaleDown,
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nike Shoe- Speacial Edition New Year Discount",
                              maxLines: 1,
                              style: textTheme.bodyLarge
                                  ?.copyWith(overflow: TextOverflow.ellipsis),
                            ),
                            Row(
                              children: [
                                Text("Color: Red"),
                                SizedBox(
                                  width: 8,
                                ),
                                Text("Size: XL"),
                              ],
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_outline),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$100",
                        style: TextStyle(
                            color: AppColors.themeColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      QuantityIncDecButton(
                        onChange: (int noOfItem) {},
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
