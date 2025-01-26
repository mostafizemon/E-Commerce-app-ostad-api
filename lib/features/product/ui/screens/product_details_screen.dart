import 'package:e_commerce_ostad_api/features/product/ui/widget/color_picker_widget.dart';
import 'package:e_commerce_ostad_api/features/product/ui/widget/product_details_carousel_slider.dart';
import 'package:e_commerce_ostad_api/features/common/ui/widgets/quantity_inc_dec_button.dart';
import 'package:e_commerce_ostad_api/features/product/ui/widget/size_picker_widget.dart';
import 'package:flutter/material.dart';

import '../../../../app/app_colors.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String routename = "product/details";
  final int productID;

  const ProductDetailsScreen({super.key, required this.productID});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductDetailsCarouselSlider(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Happy New Year Speacial Deal 80% OFF!",
                                    style: textTheme.titleMedium,
                                  ),
                                  Row(
                                    children: [
                                      Wrap(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 18,
                                          ),
                                          Text(
                                            "4.8",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text("Reviews"),
                                      ),
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          color: AppColors.themeColor,
                                          borderRadius:
                                              BorderRadius.circular(3),
                                        ),
                                        child: Icon(
                                          Icons.favorite_border,
                                          size: 15,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            QuantityIncDecButton(
                              onChange: (int int) {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Color",
                          style: textTheme.titleMedium,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        ColorPickerWidget(
                          colors: ["Red", "Green", "Pink"],
                          onColorSelected: (String selectedColor) {},
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Size",
                          style: textTheme.titleMedium,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SizePickerWidget(
                          sizes: ["S", "M", "L", "XL", "XXL"],
                          onSizeSelected: (String selectedSize) {},
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Description",
                          style: textTheme.titleMedium,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          buildPriceandAddtoCartSection(textTheme),
        ],
      ),
    );
  }

  Container buildPriceandAddtoCartSection(TextTheme textTheme) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.themeColor.withOpacity(0.15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Price",
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
                child: Text("Add to Cart"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
