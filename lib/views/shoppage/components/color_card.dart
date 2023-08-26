import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/color_card_model.dart';
import 'package:stylish/views/checkout/checkout_view.dart';
import 'package:stylish/views/placeorder/placeorder_page.dart';

class ColorCard extends StatelessWidget {
  final ColorCardModel colorCardItem;
  final int index;
  const ColorCard(
      {super.key, required this.colorCardItem, required this.index});

  @override
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (index == 0) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const CheckoutPage()));
        } else if (index == 1) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PlaceOrderPage()));
        }
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            padding: EdgeInsets.only(top: 8.h, bottom: 8.h, right: 14.w),
            width: 137.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4.r),
                  bottomRight: Radius.circular(4.r),
                  topLeft: Radius.circular(50.r),
                  bottomLeft: Radius.circular(50.r)),
              gradient: LinearGradient(
                colors: [colorCardItem.startColor, colorCardItem.endColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Text(
              colorCardItem.title,
              style: AppTypography.kLight16.copyWith(color: AppColors.kWhite),
              textAlign: TextAlign.right,
            ),
          ),
          Positioned(
            left: -1,
            top: -3,
            child: Container(
                width: 40.w,
                height: 40.h,
                padding: EdgeInsets.all(8.h),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        colorCardItem.startColor,
                        colorCardItem.endColor
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: colorCardItem.endColor,
                        offset: const Offset(0, 4),
                        blurRadius: 2,
                        spreadRadius: 0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50.r),
                    border:
                        Border.all(color: colorCardItem.endColor, width: 1.w)),
                child: SvgPicture.asset(
                  colorCardItem.image,
                  color: AppColors.kWhite,
                  fit: BoxFit.fill,
                )),
          )
        ],
      ),
    );
  }
}
