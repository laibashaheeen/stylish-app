

import 'package:stylish/data/app_assets.dart';

class OnboardingModel {
  String image;
  String title;
  String description;

  OnboardingModel(
      {required this.description, required this.image, required this.title});
}

List<OnboardingModel> onboardingList = [
  OnboardingModel(
      description:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua do amet sint. Vellit officia \nconsequat duis enim velit mollit.',
      image: AppAssets.kFashionShop,
      title: 'Choose Products'),
  OnboardingModel(
      description:
          'Amet minim mollit non deserunt ullamco est \nsit aliqua do amet sint. Vellit officia \nconsequat duis enim velit mollit.',
      image: AppAssets.kPayment,
      title: 'Make Payment'),
  OnboardingModel(
      description:
         'Amet minim mollit non deserunt ullamco est \nsit aliqua do amet sint. Vellit officia \nconsequat duis enim velit mollit.',
      image: AppAssets.kShoppingBag,
      title: 'Get Your Order'),
];
