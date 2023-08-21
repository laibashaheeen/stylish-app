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

           
          ],
        ),
      ),
    );
  }
}
