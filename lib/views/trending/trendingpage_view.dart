import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stylish/data/app_assets.dart';
import 'package:stylish/data/app_colors.dart';
import 'package:stylish/models/staggered_model.dart';
import 'package:stylish/views/homepage/components/custom_text_field.dart';
import 'package:stylish/views/profile/profile_view.dart';
import 'package:stylish/views/trending/components/staggered_card.dart';
import 'package:stylish/views/widgets/filter_row.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kWhiteBody,
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
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            const CustomTextField(),
            SizedBox(
              height: 16.h,
            ),
            const FilterRow(text: '52,082+ Iteams',),
            SizedBox(
              height: 17.h,
            ),
            StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: staggeredItem.length,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return StaggeredCard(item: staggeredItem[index]);
              },
              staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
            ),
           
          ]
        ),
      ),
    );
  }
}
