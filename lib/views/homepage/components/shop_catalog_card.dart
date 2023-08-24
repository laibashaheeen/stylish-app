import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/data/typography.dart';
import 'package:stylish/models/shop_catalog_model.dart';

class ShopCatalogCard extends StatelessWidget {
  final ShopModel shopItem ;
  const ShopCatalogCard({super.key, required this.shopItem });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 142.w,
      height: 186.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(6)),
      child: Column(
        children: [
          Image.asset(
            shopItem .image,
            
          ),
          Padding(
            padding: EdgeInsets.all(4.0.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                
                Text(
                  shopItem .description,
                  style: AppTypography.kExtraLight12
                    ..copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  shopItem .price,
                  style: AppTypography.kLight12
                    ..copyWith(color: AppColors.kBlack),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    Text(
                      shopItem.originalPrice,
                      style: AppTypography.kExtraLight10.copyWith(
                          color: AppColors.kGrey,
                          decoration: TextDecoration.lineThrough),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      shopItem .sale,
                      style: AppTypography.kExtraLight10
                          .copyWith(color: AppColors.kPrimary),
                    ),
                  ],
                ),
                

                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
