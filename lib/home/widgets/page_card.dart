import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/home/models/page_card_model.dart';

class PageCard extends StatelessWidget {
  final PageModel pageItem;
  const PageCard({super.key, required this.pageItem});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300.h,
          width: 300.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage(pageItem.image),
                fit: BoxFit.fill,
              )),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          pageItem.title,
          style: AppTypogrphy.kExtraBold24,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          pageItem.description,
          style: AppTypogrphy.kSemiBold14.copyWith(color: AppColors.kGrey),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
