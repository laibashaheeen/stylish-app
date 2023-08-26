import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/checkout_model.dart';
import 'package:stylish/views/placeorder/components/custom_container.dart';
import 'package:stylish/views/shippingpage/shipping_page.dart';
import 'package:stylish/views/widgets/buttons/primary_button.dart';

class PlaceOrderPage extends StatefulWidget {
  final CheckoutModel checkoutItem;
  const PlaceOrderPage({super.key, required this.checkoutItem});

  @override
  State<PlaceOrderPage> createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
          'Shopping Bag',
          style: AppTypography.kSemiBold16.copyWith(color: AppColors.kBlack),
        ),
        actions: [
          SvgPicture.asset(AppAssets.kHeart),
          SizedBox(
            width: 22.w,
          )
        ],
      ),
      body: SingleChildScrollView(
         padding: EdgeInsets.all(22.0.h),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(4.r),
                child: SizedBox(
                    width: 123.w,
                    height: 153.h,
                    child: Image.asset(
                      widget.checkoutItem.image,
                      fit: BoxFit.fitHeight,
                    )),
              ),
              SizedBox(
                width: 21.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.checkoutItem.title,
                    style: AppTypography.kSemiBold16
                        .copyWith(color: AppColors.kBlack),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "Checked Single-Breasted \nBlazer",
                    style: AppTypography.kExtraLight12.copyWith(
                      color: AppColors.kBlack,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      const CustomContainer(
                        text1: 'Size ',
                        text2: ' 42',
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      const CustomContainer(
                        text1: 'QTY ',
                        text2: ' 1',
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Delivery by ',
                            style: AppTypography.kExtraLight12.copyWith(
                              color: AppColors.kBlack,
                              fontSize: 13,
                            )),
                        TextSpan(
                          text: ' 10 May 2XXX',
                          style: AppTypography.kSemiBold16
                              .copyWith(color: AppColors.kBlack),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
                ),
                SizedBox(
            height: 54.h,
                ),
                Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(AppAssets.kCoupon),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text("Apply Coupons",
                      style: AppTypography.kLight16
                          .copyWith(color: AppColors.kBlack)),
                ],
              ),
              Text("Select",
                  style: AppTypography.kSemiBold14
                      .copyWith(color: AppColors.kPrimary))
            ],
                ),
                SizedBox(height: 36.h),
                Divider(
            thickness: 1,
            color: AppColors.kGreyDivider,
                ),
                SizedBox(
            height: 35.h,
                ),
                Text("Order Payment Details",
              style: AppTypography.kLight16.copyWith(
                color: AppColors.kBlack,
                fontSize: 17,
              )),
                SizedBox(
            height: 26.h,
                ),
                Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order Amounts",
                  style: AppTypography.kExtraLight16
                      .copyWith(color: AppColors.kBlack)),
              Text("₹ 7,000.00",
                  style: AppTypography.kSemiBold14
                      .copyWith(color: AppColors.kBlack)),
            ],
                ),
                SizedBox(height: 12.h),
                Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Convenience",
                      style: AppTypography.kExtraLight16
                          .copyWith(color: AppColors.kBlack)),
                  SizedBox(
                    width: 14.w,
                  ),
                  Text("Know More",
                      style: AppTypography.kSemiBold12
                          .copyWith(color: AppColors.kPrimary)),
                ],
              ),
              Text("Apply Coupon",
                  style: AppTypography.kSemiBold12
                      .copyWith(color: AppColors.kPrimary)),
            ],
                ),
                SizedBox(height: 12.h),
                Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Delivery Fee",
                  style: AppTypography.kExtraLight14
                      .copyWith(color: AppColors.kBlack)),
              SizedBox(
                width: 14.w,
              ),
              Text("Free",
                  style: AppTypography.kSemiBold14
                      .copyWith(color: AppColors.kPrimary)),
            ],
                ),
                SizedBox(height: 41.h),
                Divider(
            thickness: 1,
            color: AppColors.kGreyDivider,
                ),
                SizedBox(
            height: 29.h,
                ),
                Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Order Total",
                  style: AppTypography.kLight16.copyWith(
                    color: AppColors.kBlack,
                    fontSize: 17,
                  )),
              Text("₹ 7,000.00",
                  style: AppTypography.kSemiBold14
                      .copyWith(color: AppColors.kBlack)),
            ],
                ),
                SizedBox(
            height: 10.h,
                ),
                Row(
            children: [
              Text("EMI Available",
                  style: AppTypography.kExtraLight16
                      .copyWith(color: AppColors.kBlack)),
              SizedBox(
                width: 22.w,
              ),
              Text("Details",
                  style: AppTypography.kSemiBold12
                      .copyWith(color: AppColors.kPrimary)),
            ],
                ),
                SizedBox(height: 175.h,)
              ]),
            
          ],
        ),
      ),
      bottomSheet: Container(
              width: double.infinity,
              height: 146,
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 38.h),
              decoration: BoxDecoration(
                  color: AppColors.kGreyButton,
                  border: Border.all(width: 1, color: AppColors.kGreyDivider),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.r),
                      topRight: Radius.circular(24.r))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:15.h),
                    child: Column(
                      children: [
                        Text("₹ 7,000.00",
                            style: AppTypography.kSemiBold14
                                .copyWith(color: AppColors.kBlack)),
                        SizedBox(height: 6.h),
                        Text("View Details",
                            style: AppTypography.kSemiBold12
                                .copyWith(color: AppColors.kPrimary)),
                      ],
                    ),
                  ),
                  PrimaryButton(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder:(context) => const ShippingPage(),));
                    }, 
                  text: 'Proceed to Payment', isSmall: true,)
                ],
              ),
            )
    );
  }
}