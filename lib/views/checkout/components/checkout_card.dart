import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/checkout_model.dart';
import 'package:stylish/views/widgets/rating_star.dart';

class CheckoutCard extends StatelessWidget {
  final CheckoutModel checkoutItem;
  const CheckoutCard({super.key, required this.checkoutItem});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(12.h),
        decoration: BoxDecoration(boxShadow:  [
          BoxShadow(
            offset: Offset(0, 6),
            blurRadius: 8,
            spreadRadius: 0,
            color: AppColors.kBlackShadow
          ),
        ], color: AppColors.kWhite, borderRadius: BorderRadius.circular(6.r)),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  checkoutItem.image,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        checkoutItem.title,
                        style: AppTypography.kSemiBold14
                            .copyWith(color: AppColors.kBlack),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Variations :',
                            style: AppTypography.kLight12
                                .copyWith(color: AppColors.kBlack),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(4.h),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.kGreyDivider),
                                borderRadius: BorderRadius.circular(2.r)),
                            child: Text(
                              checkoutItem.firstColor,
                              style: AppTypography.kLight10
                                  .copyWith(color: AppColors.kBlack),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            padding: EdgeInsets.all(4.h),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.kGreyDivider),
                                borderRadius: BorderRadius.circular(2.r)),
                            child: Text(
                              checkoutItem.secondColor,
                              style: AppTypography.kLight10
                                  .copyWith(color: AppColors.kBlack),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: [
                          Text(checkoutItem.rating,
                              style: AppTypography.kLight12
                                  .copyWith(color: AppColors.kBlack)),
                          SizedBox(
                            width: 5.w,
                          ),
                          const RatingStar()
                        ],
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.h, vertical: 8.h),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: AppColors.kGreyDivider),
                                borderRadius: BorderRadius.circular(2.r)),
                            child: Text(
                              checkoutItem.price,
                              style: AppTypography.kSemiBold16
                                  .copyWith(color: AppColors.kBlack),
                            ),
                          ),
                          SizedBox(
                            width: 11.w,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(checkoutItem.sale,
                                  style: AppTypography.kLight10.copyWith(
                                      fontSize: 8.sp,
                                      color: AppColors.kPrimary)),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(checkoutItem.originalPrice,
                                  style: AppTypography.kLight14.copyWith(
                                      color: AppColors.kGrey,
                                      decoration: TextDecoration.lineThrough)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Divider(
              thickness: 1,
              color: AppColors.kGreyDivider,
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total Order (1) :',
                    style: AppTypography.kLight12
                        .copyWith(color: AppColors.kBlack)),
                Text(
                  checkoutItem.price,
                  style: AppTypography.kSemiBold16
                      .copyWith(color: AppColors.kBlack),
                ),
              ],
            ),
          ],
        ));
  }
}
