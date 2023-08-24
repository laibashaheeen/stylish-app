
import 'package:stylish/data/app_assets.dart';

class CustomModel {
  String image;
  String title;
  String description;
  String price;

  String rating;

  CustomModel({
    required this.image,
    required this.price,
    required this.rating,
    required this.description,
    required this.title,
  });
}


List<CustomModel> customItem = [
  CustomModel(
    image: AppAssets.kNikeBlack,
    price: "₹1900",
    rating: "56890",
    description: "Vision Alta Men’s Shoes Size (All Colours)",
    title: "NIke Sneakers",
  ),
  CustomModel(
    image: AppAssets.kNikeMulti,
    price: "₹1900",
    rating: "56890",
    description: "Matte Gunmetal Black Full\nRim Rectangle Sunglasses.",
    title: "NIke Sneakers",
  ),
  

  
];
