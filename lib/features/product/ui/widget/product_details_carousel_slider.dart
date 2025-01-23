import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_ostad_api/app/app_colors.dart';
import 'package:e_commerce_ostad_api/features/common/ui/controllers/slider_indicator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsCarouselSlider extends StatelessWidget {
  const ProductDetailsCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SliderIndicatorController sliderIndicatorController =
        Get.put(SliderIndicatorController());
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 300.0,
            viewportFraction: 1,
            // autoPlay: true,
            onPageChanged: (index, reason) {
              sliderIndicatorController.productDetailsonchangeindex(index);
            },
          ),
          items: [1, 2, 3, 4, 5].map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: AppColors.themeColor,
                      // borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'text $i',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  );
                },
              );
            },
          ).toList(),
        ),
        Positioned(
          bottom: 8,
          child: Obx(
            () => AnimatedSmoothIndicator(
              activeIndex:
                  sliderIndicatorController.prodcutDetailscurrentIndex.value,
              count: 5,
              effect: WormEffect(
                  activeDotColor: AppColors.themeColor,
                  dotColor: Colors.grey.shade300),
            ),
          ),
        ),
      ],
    );
  }
}
