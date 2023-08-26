import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/color_card_model.dart';
import 'package:stylish/models/sizechart_model.dart';
import 'package:stylish/models/wrap_model.dart';
import 'package:stylish/views/shoppage/components/WrapCard.dart';
import 'package:stylish/views/shoppage/components/color_card.dart';
import 'package:stylish/views/shoppage/components/compare_card.dart';
import 'package:stylish/views/trending/components/staggered_card.dart';
import 'package:stylish/views/widgets/filter_row.dart';
import 'package:stylish/views/widgets/rating_star.dart';

import '../../models/staggered_model.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final CarouselController carouselController = CarouselController();
  final PageController controller = PageController();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhiteBody,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: AppColors.kBlack,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16.w),
            height: 32.h,
            width: 32.w,
            padding: EdgeInsets.all(7.h),
            decoration: BoxDecoration(
              color: AppColors.kGreyWelcome,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              AppAssets.kCartAppbar,
            ),
          )
        ],
      ),
      backgroundColor: AppColors.kWhiteBody,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.centerRight,
              children: [
                CarouselSlider(
                    carouselController: carouselController,
                    items: [
                      SizedBox(
                          width: 343.w,
                          child: Image.asset(
                            AppAssets.kShopBanner,
                            fit: BoxFit.fill,
                          )),
                      SizedBox(
                          width: 343.w,
                          child: Image.asset(
                            AppAssets.kShopBanner,
                            fit: BoxFit.fill,
                          )),
                      SizedBox(
                          width: 343.w,
                          child: Image.asset(
                            AppAssets.kShopBanner,
                            fit: BoxFit.fill,
                          )),
                    ],
                    options: CarouselOptions(
                      height: 213.h,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                    )),
                Positioned(
                  right: 12,
                  child: InkWell(
                    onTap: () {
                      carouselController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Image.asset(AppAssets.kIosArrow),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 4,
              effect: ScaleEffect(
                activeDotColor: AppColors.kPrimary,
                dotColor: AppColors.kGreyIndicator,
                dotHeight: 9,
                dotWidth: 9,
                spacing: 6,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Size: 7UK',
                  style: AppTypography.kSemiBold14
                      .copyWith(color: AppColors.kBlack),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                    height: 40.h,
                    child: ListView.separated(
                      
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 8.w),
                      scrollDirection: Axis.horizontal,
                      itemCount: itemSize.length,
                      itemBuilder: (context, index) {
                        final isSelected = index == _selectedIndex;
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.all(8.h),
                            decoration: BoxDecoration(
                              color: isSelected
                                  ? AppColors.kPrimary
                                  : AppColors.kWhite,
                              borderRadius: BorderRadius.circular(4.r),
                              border: Border.all(
                                color: AppColors.kPrimary,
                                width: 2.w,
                              ),
                            ),
                            child: Text(
                              itemSize[index].text,
                              style: AppTypography.kSemiBold14.copyWith(
                                color: isSelected
                                    ? AppColors.kWhite
                                    : AppColors.kPrimary,
                              ),
                            ),
                          ),
                        );
                      },
                    )),
                SizedBox(height: 16.h),
                Text(
                  'NIke Sneakers',
                  style: AppTypography.kSemiBold20
                      .copyWith(color: AppColors.kBlack),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Vision Alta Men’s Shoes Size (All Colours)',
                  style: AppTypography.kExtraLight14
                      .copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    const RatingStar(),
                    SizedBox(width: 5.w),
                    Text(
                      '56,890',
                      style: AppTypography.kLight14
                          .copyWith(color: AppColors.kGrey),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Text(
                      '₹2,999',
                      style: AppTypography.kExtraLight14.copyWith(
                          color: AppColors.kGrey,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '₹1,500',
                      style: AppTypography.kLight14
                        ..copyWith(color: AppColors.kBlack),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      '50% Off',
                      style: AppTypography.kSemiBold14
                          .copyWith(color: AppColors.kPrimary),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Product Details',
                  style: AppTypography.kLight14
                    ..copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 4.h,
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(),
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            'Perhaps the most iconic sneaker of all-time, this original "Chicago"? colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...',
                        style: AppTypography.kExtraLight12
                            .copyWith(color: AppColors.kBlack),
                      ),
                      TextSpan(
                        text: 'More',
                        style: AppTypography.kExtraLight12
                            .copyWith(color: AppColors.kPrimary),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                SizedBox(
                  height: 24.h,
                  child: ListView.separated(
                    itemCount: wrapItem.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return WrapCard(
                        wrapItem: wrapItem[index],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 8.w,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  height: 40.h,
                  child: ListView.separated(
                    itemCount: colorCardItem.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ColorCard(
                        colorCardItem: colorCardItem[index], index: index,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 13.w,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 11.h),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.kPinkDelivery,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Delivery in\n',
                          style: AppTypography.kSemiBold14
                              .copyWith(color: AppColors.kBlack),
                        ),
                        TextSpan(
                          text: '1 within Hour',
                          style: AppTypography.kSemiBold20
                              .copyWith(color: AppColors.kBlack),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CompareCARD(
                            image: AppAssets.kEye, text: 'View Similar')),
                    SizedBox(
                      width: 3.w,
                    ),
                    Expanded(
                        child: CompareCARD(
                            image: AppAssets.kCompareItem,
                            text: 'Add to Compare'))
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                const FilterRow(
                  text: 'Similar To \n282+ Items',
                ),
                SizedBox(
                  height: 18.h,
                ),
                SizedBox(
                  height: 249.h,
                  child: ListView.separated(
                    itemCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return StaggeredCard(
                        item: customItem[index],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 12.w,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 60.h,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
