import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/views/homepage/homepage_view.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _HomePageState();
}

class _HomePageState extends State<LandingPage> {
  int _currentIndex = 0;
  bool isSelected = false;

  List<Widget> pages = [
    const HomePage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
     
      body: pages[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isSelected = !isSelected;

          setState(() {});
        },
        backgroundColor: isSelected ? AppColors.kPrimary : AppColors.kWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: SvgPicture.asset(
          AppAssets.kShoppingCart,
          color: isSelected ? AppColors.kWhite : AppColors.kBlack,
          width: 23.08.w,
          height: 24.h,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
       
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.kPrimary,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppAssets.kHome,
              color: AppColors.kPrimary,
              width: 23.08.w,
              height: 24.h,
            ),
            icon: SvgPicture.asset(
              AppAssets.kHome,
              color: AppColors.kBlack,
              width: 23.08.w,
              height: 24.h,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.kHeart,
              color: AppColors.kBlack,
              width: 23.08.w,
              height: 24.h,
            ),
            activeIcon: SvgPicture.asset(
              AppAssets.kHeart,
              color: AppColors.kPrimary,
              width: 23.08.w,
              height: 24.h,
            ),
            label: 'Wishlist',
          ),
          const BottomNavigationBarItem(
            icon: SizedBox(width: 0),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppAssets.kSearch,
              color: AppColors.kPrimary,
              width: 23.08.w,
              height: 24.h,
            ),
            icon: SvgPicture.asset(
              AppAssets.kSearch,
              color: AppColors.kBlack,
              width: 23.08.w,
              height: 24.h,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AppAssets.kSettings,
              color: AppColors.kBlack,
              width: 23.08.w,
              height: 24.h,
            ),
            activeIcon: SvgPicture.asset(
              AppAssets.kSettings,
              color: AppColors.kPrimary,
              width: 23.08.w,
              height: 24.h,
            ),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
