
import 'package:stylish/data/app_assets.dart';

class FeatureModel {
  String image;
  String title;

  FeatureModel({required this.title, required this.image});
}

List<FeatureModel> featureItem = [
  FeatureModel(title: 'Beauty', image: AppAssets.kHighlight1),
  FeatureModel(title: 'Fashion', image: AppAssets.kHighlight2),
  FeatureModel(title: 'Kids', image: AppAssets.kHighlight3),
  FeatureModel(title: 'Men', image: AppAssets.kHighlight4),
  FeatureModel(title: 'Women', image: AppAssets.kHighlight5),
  
];
  
  