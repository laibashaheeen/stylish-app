import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/views/shippingpage/components/payment_button.dart';
import 'package:stylish/views/shippingpage/components/price_detail.dart';
import 'package:stylish/views/widgets/buttons/primary_button.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({super.key});

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.kBlack,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Checkout',
          style: AppTypography.kSemiBold18.copyWith(color: AppColors.kBlack),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.0.h),
              child: Column(
                children: [
                  const PriceDetail(
                    text: 'Order',
                    price: '₹ 7,000',
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  const PriceDetail(
                    text: 'Shipping',
                    price: '₹ 30',
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  const PriceDetail(
                    text: 'Total',
                    price: '₹ 7,030',
                    isTotal: true,
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Divider(
                    thickness: 2,
                    color: AppColors.kGreyDivider,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Text('Payment',
                style: AppTypography.kLight18
                    .copyWith(color: AppColors.kBlackText)),
            SizedBox(
              height: 10.h,
            ),
            PaymentButton(image: AppAssets.kVisa),
            SizedBox(
              height: 25.h,
            ),
            PaymentButton(image: AppAssets.kPaypal),
            SizedBox(
              height: 25.h,
            ),
            PaymentButton(image: AppAssets.kMaestro),
            SizedBox(
              height: 25.h,
            ),
            PaymentButton(image: AppAssets.kApplSignin),
            SizedBox(
              height: 25.h,
            ),
            PrimaryButton(
              onTap: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => Dialog(
                  insetPadding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 30.0.h, horizontal: 60.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(AppAssets.kStar),
                            SvgPicture.asset(
                              AppAssets.kDone,
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        Text("Payment done successfully.",
                            style: AppTypography.kSemiBold14
                                .copyWith(color: AppColors.kBlack))
                      ],
                    ),
                  ),
                ),
              ),
              text: 'Continue',
              isLarge: true,
            )
          ],
        ),
      ),
    );
  }
}
