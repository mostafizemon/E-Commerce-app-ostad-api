import 'package:e_commerce_ostad_api/app/assets_path.dart';
import 'package:e_commerce_ostad_api/features/home/ui/widgets/appbar_action_button.dart';
import 'package:e_commerce_ostad_api/features/home/ui/widgets/home_carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/category_listview.dart';
import '../widgets/home_section_header.dart';
import '../widgets/item_list_view.dart';
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
                onTap: () {},
              ),
              CategoryListView(),
              HomeSectionHeader(
                title: 'Popular',
                onTap: () {},
              ),
              ItemListView(),
              HomeSectionHeader(
                title: 'Special',
                onTap: () {},
              ),
              ItemListView(),
              HomeSectionHeader(
                title: 'New',
                onTap: () {},
              ),
              ItemListView(),
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
