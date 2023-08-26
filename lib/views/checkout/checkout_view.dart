import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/checkout_model.dart';
import 'package:stylish/views/checkout/components/checkout_card.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
          'Checkout',
          style: AppTypography.kSemiBold18.copyWith(color: AppColors.kBlack),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(AppAssets.kLocationOutlined),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  'Delivery Address',
                  style: AppTypography.kSemiBold14
                      .copyWith(color: AppColors.kBlack),
                )
              ],
            ),
            SizedBox(height: 10.h,),
            Row(
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
      Container(
                  
                  height: 79.h,
                  padding: EdgeInsets.all(12.h),
                  decoration: BoxDecoration(
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.circular(6.r),
                    boxShadow:  [
                       BoxShadow(
                          offset: const Offset(0,6),
                          blurRadius: 8,
                          spreadRadius: 0,
                          color: AppColors.kBlackShadow
                        ),
                      ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Address :', style: AppTypography.kLight12.copyWith(color: AppColors.kBlack)),
      
                      Text("216 St Paul's Rd, London N1 2LL, UK \nContact : +44-784232", style: AppTypography.kExtraLight12.copyWith(color: AppColors.kBlack)),
      
                    ],
                  )
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: SvgPicture.asset(AppAssets.kEditAddress))
                ],),
                
                SizedBox(width: 12.w,),
                Expanded(
                  child: Container(
                    height: 79.h,
                    padding: EdgeInsets.symmetric(vertical: 27.h, horizontal: 27.h),
                    decoration: BoxDecoration(
                      color: AppColors.kWhite,
                      borderRadius: BorderRadius.circular(6.r),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0,6),
                          blurRadius: 8,
                          spreadRadius: 0,
                          color: AppColors.kBlackShadow
                        ),
                      ],
                    ),
                    child: SvgPicture.asset(AppAssets.kAdd)
                  ),
                )
              ],
            ),
            SizedBox(height: 24.h),
            Text(
                  'Shopping List',
                  style: AppTypography.kSemiBold14
                      .copyWith(color: AppColors.kBlack),
                ),
                 SizedBox(height: 10.h),
                RawScrollbar(
                  thumbVisibility: true,
                  thickness: 20.0,
                   controller: controller,
                  child: ListView.separated(
                     controller: controller,
                    shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => SizedBox(height: 14.w),
                      
                      itemCount: checkoutItem.length,
                      itemBuilder: (context, index) {
                        return CheckoutCard(checkoutItem: checkoutItem[index],);
                      }),
                ),
          ],
        ),
      ),
    );
  }
}
