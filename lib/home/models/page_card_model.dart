

import 'package:stylish/data/assets.dart';

class PageModel {
  String image;
  String title;
  String description;

  PageModel(
      {required this.description, required this.image, required this.title});
}

List<PageModel> pageItem = [
  PageModel(
      description:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua do amet sint. Vellit officia \nconsequat duis enim velit mollit.',
      image: AppAssets.kFashionShop,
      title: 'Choose Products'),
  PageModel(
      description:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua do amet sint. Vellit officia \nconsequat duis enim velit mollit.',
      image: AppAssets.kPayment,
      title: 'Make Payment'),
  PageModel(
      description:
         'Amet minim mollit non deserunt ullamco est \nsit aliqua do amet sint. Vellit officia \nconsequat duis enim velit mollit.',
      image: AppAssets.kShoppingBag,
      title: 'Get Your Order'),
];
