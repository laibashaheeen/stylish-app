import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';

class PaymentButton extends StatefulWidget {
  final String image;

  const PaymentButton({super.key, required this.image});

  @override
  State<PaymentButton> createState() => _PaymentButtonState();
}

class _PaymentButtonState extends State<PaymentButton> {
bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isTapped = !_isTapped;
        });
      },
       focusColor: AppColors.kPrimary,
      child: Container(
        height: 59.h,
        padding: EdgeInsets.symmetric(horizontal: 17.h),
        decoration: BoxDecoration(
          color: AppColors.kGreyButton,
           border: Border.all(
            color: _isTapped ? AppColors.kPrimary : Colors.transparent,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              widget.image,
            ),
            Text('*********2109',
                style: AppTypography.kLight16
                    .copyWith(color: AppColors.kGreyText, fontSize: 15.sp))
          ],
        ),
      ),
    );
  }
}
