import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_ostad_api/app/app_colors.dart';
import 'package:e_commerce_ostad_api/features/home/ui/controllers/slider_indicator_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final SliderIndicatorController sliderIndicatorController =
        Get.put(SliderIndicatorController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 200.0,
            viewportFraction: 0.9,
            // autoPlay: true,
            onPageChanged: (index, reason) {
              sliderIndicatorController.onchangeindex(index);
            },
          ),
          items: [1, 2, 3, 4, 5].map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  );
                },
              );
            },
          ).toList(),
        ),
        SizedBox(
          height: 8,
        ),
        Obx(
          () => AnimatedSmoothIndicator(
            activeIndex: sliderIndicatorController.currentIndex.value,
            count: 5,
            effect: WormEffect(
                activeDotColor: AppColors.themeColor,
                dotColor: Colors.grey.shade200),
          ),
        ),
      ],
    );
  }
}
