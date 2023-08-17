import 'package:flutter/material.dart'
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/home/models/page_card_model.dart';
import 'package:stylish/home/widgets/page_card.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 0;
  final controller = PageController();
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  style: const TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: '${_currentIndex + 1}',
                      style: AppTypogrphy.kSemiBold18,
                    ),
                    TextSpan(
                      text: '/3',
                      style: AppTypogrphy.kSemiBold18
                          .copyWith(color: AppColors.kGrey),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: AppTypogrphy.kSemiBold18,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 110.h,
            ),
            Expanded(
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                itemCount: pageItem.length,
                itemBuilder: (context, index) => Visibility(
                  visible: index == _currentIndex,
                  maintainState: true,
                  child: PageCard(pageItem: pageItem[index]),
                ),
              ),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      _currentIndex == 0 ? '' : 'Prev',
                      style: AppTypogrphy.kSemiBold14
                          .copyWith(color: AppColors.kGrey),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: pageItem.length,
                    effect: ExpandingDotsEffect(
                        dotHeight: 10.h,
                        dotWidth: 10.w,
                        radius: 100.r,
                        activeDotColor: AppColors.kBlack),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      _currentIndex == 2 ? "Get Started" : 'Next',
                      style: AppTypogrphy.kSemiBold18
                          .copyWith(color: AppColors.kPrimary),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
