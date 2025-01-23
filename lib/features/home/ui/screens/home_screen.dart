import 'package:e_commerce_ostad_api/app/assets_path.dart';
import 'package:e_commerce_ostad_api/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:e_commerce_ostad_api/features/home/ui/widgets/appbar_action_button.dart';
import 'package:e_commerce_ostad_api/features/home/ui/widgets/home_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../common/ui/widgets/category_item_widget.dart';
import '../../../common/ui/widgets/product_item_widget.dart';
import '../widgets/home_section_header.dart';
import '../widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              ProductsSearchBar(
                controller: searchTEController,
              ),
              const SizedBox(
                height: 16,
              ),
              HomeCarouselSlider(),
              HomeSectionHeader(
                title: 'Category',
                onTap: () {
                  Get.find<MainBottomNavController>().moveToCategory();
                },
              ),
              SizedBox(
                height: 110,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoryItemWidget();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 16,
                      );
                    },
                    itemCount: 10),
              ),
              HomeSectionHeader(
                title: 'Popular',
                onTap: () {},
              ),
              SizedBox(
                height: 190,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductItemWidget();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 8,
                    );
                  },
                  itemCount: 10,
                ),
              ),
              HomeSectionHeader(
                title: 'Special',
                onTap: () {},
              ),
              SizedBox(
                height: 190,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductItemWidget();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 8,
                    );
                  },
                  itemCount: 10,
                ),
              ),
              HomeSectionHeader(
                title: 'New',
                onTap: () {},
              ),
              SizedBox(
                height: 190,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductItemWidget();
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 8,
                    );
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

//=>   ----      -----------------------------     ---    <=//
  AppBar buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetsPath.navbarappLogoSvg),
      actions: [
        AppbarActionButton(
          icon: Icons.person_outline_rounded,
          onTap: () {},
        ),
        SizedBox(
          width: 8,
        ),
        AppbarActionButton(
          icon: Icons.phone,
          onTap: () {},
        ),
        SizedBox(
          width: 8,
        ),
        AppbarActionButton(
          icon: Icons.notifications_active_outlined,
          onTap: () {},
        ),
      ],
    );
  }
}
