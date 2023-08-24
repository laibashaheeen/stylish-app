import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/models/catelog_model.dart';
import 'package:stylish/models/feature_model.dart';
import 'package:stylish/models/shop_catalog_model.dart';
import 'package:stylish/views/homepage/components/banner_card.dart';
import 'package:stylish/views/homepage/components/catalog_card.dart';
import 'package:stylish/views/homepage/components/custom_text_field.dart';
import 'package:stylish/views/homepage/components/deal_card.dart';
import 'package:stylish/views/homepage/components/feature_card.dart';
import 'package:stylish/views/homepage/components/heels_card.dart';
import 'package:stylish/views/homepage/components/shop_catalog_card.dart';
import 'package:stylish/views/homepage/components/special_offer_card.dart';
import 'package:stylish/views/homepage/components/sponsor_card.dart';
import 'package:stylish/views/homepage/components/summer_sale.dart';
import 'package:stylish/views/profile/profile_view.dart';
import 'package:stylish/views/widgets/filter_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController carouselController = CarouselController();
  final PageController controller = PageController();
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssets.kMenu),
        ),
        centerTitle: true,
        title: Image.asset(AppAssets.kLogo),
        actions: [
          InkWell(onTap: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => const ProfilePage(),));
          } ,child: Image.asset(AppAssets.kProfile)),
        ],
      ),
      backgroundColor: AppColors.kWhiteBody,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: 16.h,
          top: 16.h,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16.0.h),
              child: const CustomTextField(),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0.h),
              child: const FilterRow(text: 'All Featured')
            ),
            SizedBox(
              height: 17.h,
            ),
            Container(
              height: 90.h,
              color: AppColors.kWhite,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(width: 16.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: featureItem.length,
                  itemBuilder: (context, index) {
                    return FeatureCard(featureItem: featureItem[index]);
                  }),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0.h),
              child: CarouselSlider(
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
            ),
            SizedBox(
              height: 12.h,
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: ScaleEffect(
                activeDotColor: AppColors.kPink,
                dotColor: AppColors.kGreyIndicator,
                dotHeight: 9,
                dotWidth: 9,
                spacing: 6,
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0.h),
              child: DealCard(
                subtitle: '22h 55m 20s remaining',
                title: 'deal of the day',
                svg: AppAssets.kClock,
                color: AppColors.kBlue,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0.h),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  SizedBox(
                    height: 255.h,
                    child: ListView.separated(
                      itemCount: 2,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CatalogCard(
                          offerItem: offerItem[index],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 12.w,
                        );
                      },
                    ),
                  ),
                  Positioned(
                      right: 9,
                      child: InkWell(
                          onTap: () {},
                          child: Image.asset(AppAssets.kIosArrow)))
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0.h),
              child: const OfferCard(),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0.h),
              child: const HeelCard(),
            ),
            SizedBox(
              height: 17.h,
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0.h),
              child: DealCard(
                subtitle: 'Last Date 29/02/22',
                title: 'Trending Products',
                svg: AppAssets.kCalender,
                color: AppColors.kPrimaryHue,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Stack(
              alignment: Alignment.centerRight,
              children: [
                SizedBox(
                  height: 210.h,
                  child: ListView.separated(
                    controller: _scrollController,
                    itemCount: shopItem.length,
                    scrollDirection: Axis.horizontal,
                    
                    itemBuilder: (context, index) {
                      return ShopCatalogCard(
                        shopItem: shopItem[index],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 16.w,
                      );
                    },
                  ),
                ),
                Positioned(
                  right: 16,
                  child: InkWell(
                    onTap: () {
                      int nextIndex =
                          _scrollController.position.pixels ~/ 210.h + 1;
                      if (nextIndex < shopItem.length) {
                        _scrollController.animateTo(nextIndex * 210.h,
                            duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                      }
                    },
                    child: Image.asset(AppAssets.kIosArrow),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            Padding(
                padding: EdgeInsets.only(right: 16.0.h),
              child: const SummerSale(),
            ),
            SizedBox(height: 16.h,),
            const SponsorCard(),
            SizedBox(
              height: 100.h,
            )
          ],
        ),
      ),
    );
  }
}
