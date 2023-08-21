import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/feature_model.dart';
import 'package:stylish/views/homepage/components/banner_card.dart';
import 'package:stylish/views/homepage/components/custom_text_field.dart';
import 'package:stylish/views/homepage/components/feature_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController carouselController = CarouselController();
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhiteBody,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssets.kMenu),
        ),
        centerTitle: true,
        title: Image.asset(AppAssets.kLogo),
        actions: [
          Image.asset(AppAssets.kProfile),
        ],
      ),
      backgroundColor: AppColors.kWhiteBody,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            const CustomTextField(),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Featured',
                  style: AppTypography.kSemiBold18
                      .copyWith(color: AppColors.kBlack),
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: AppColors.kWhite),
                      child: Row(
                        children: [
                          Text('Sort',
                              style: AppTypography.kExtraLight12
                                  .copyWith(color: AppColors.kBlack)),
                          SvgPicture.asset(AppAssets.kSort),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.r),
                          color: AppColors.kWhite),
                      child: Row(
                        children: [
                          Text('Filter',
                              style: AppTypography.kExtraLight12
                                  .copyWith(color: AppColors.kBlack)),
                          SvgPicture.asset(AppAssets.kFilter),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            SizedBox(
              height: 76.h,
              child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(width: 16.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: featureItem.length,
                  itemBuilder: (context, index) {
                    return FeatureCard(featureItem: featureItem[index]);
                  }),
            ),
            SizedBox(
              height: 24.h,
            ),
            CarouselSlider(
                carouselController: carouselController,
                items: const [
                  BannerCard(),
                  BannerCard(),
                  BannerCard(),
                ],
                options: CarouselOptions(
                  height: 189.h,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  autoPlayAnimationDuration:
                      const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                )),
            SizedBox(
              height: 12.h,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ScaleEffect(
                activeDotColor: AppColors.kPink,
                dotColor: AppColors.kGrey,
                dotHeight: 9,
                dotWidth: 9,
                spacing: 4,
              ),
            ),

            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20.0.h),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         'Deals',
            //         style: AppTypography.kBold16,
            //       ),
            //       Text('See All',
            //           style: AppTypography.kBold16
            //               .copyWith(color: AppColors.ktheme)),
            //     ],
            //   ),
            // ),
            // Container(
            //   width: double.infinity,
            //   padding: EdgeInsets.all(12.h),
            //   margin: EdgeInsets.all(20.h),
            //   decoration: BoxDecoration(
            //     color: AppColors.kCategoryColor,
            //     borderRadius: BorderRadius.circular(10.r),
            //   ),
            //   child: Stack(
            //     children: [
            //       Positioned(
            //         right: -15,
            //         bottom: -15,
            //         child: Image.asset(
            //           AppAssets.kSale,
            //           height: 155.h,
            //           width: 155.w,
            //           fit: BoxFit.contain,
            //         ),
            //       ),
            //       Padding(
            //         padding: EdgeInsets.all(8.0.h),
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text(
            //               '50% off',
            //               style: AppTypography.kBold26,
            //             ),
            //             Text(
            //               'On Grocery Combo pack',
            //               style: AppTypography.kMedium14,
            //             ),
            //             SizedBox(
            //               height: 10.h,
            //             ),
            //             InkWell(
            //               onTap: () {},
            //               child: Container(
            //                 height: 35.h,
            //                 width: 120.w,
            //                 alignment: Alignment.center,
            //                 decoration: BoxDecoration(
            //                   color: AppColors.ktheme,
            //                   borderRadius: BorderRadius.circular(5.r),
            //                 ),
            //                 child: const Text(
            //                   'Order Now',
            //                   style: TextStyle(
            //                     fontSize: 16,
            //                     color: Colors.white,
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ],
            //         ),
            //       )
            //     ],
            //   ),
            // ),

            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20.0.h),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(
            //         'Popular items',
            //         style: AppTypography.kBold16,
            //       ),
            //       Text('See All',
            //           style: AppTypography.kBold16
            //               .copyWith(color: AppColors.ktheme)),
            //     ],
            //   ),
            // ),

            // Padding(
            //     padding: EdgeInsets.only(left: 20.0.w),
            //     child: SizedBox(
            //       height: 185.h,
            //       child: ListView.separated(
            //           separatorBuilder: (context, index) =>
            //               const SizedBox(width: 10),
            //           scrollDirection: Axis.horizontal,
            //           itemCount: popularItem.length,
            //           itemBuilder: (context, index) {
            //             return PopularItemCard(popularItem: popularItem[index]);
            //           }),
            //     )),
          ],
        ),
      ),
    );
  }
}
