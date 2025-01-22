import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_ostad_api/app/assets_path.dart';
import 'package:e_commerce_ostad_api/features/home/ui/widgets/appbar_action_button.dart';
import 'package:e_commerce_ostad_api/features/home/ui/widgets/home_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              SizedBox(
                height: 16,
              ),
              ProductsSearchBar(
                controller: searchTEController,
              ),
              SizedBox(
                height: 16,
              ),

              HomeCarouselSlider(),


            ],
          ),
        ),
      ),
    );
  }

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


