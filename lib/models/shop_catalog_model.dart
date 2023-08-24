
import 'package:stylish/data/app_assets.dart';

class ShopModel {
  String image;
 
  String description;
  String price;
  String originalPrice;
  String sale;
  
  ShopModel({required this.image, required this.description, required this.price, required this.originalPrice, required this.sale,});
}

List<ShopModel> shopItem = [
  ShopModel( image: AppAssets.kWatch, description: "IWC Scheffhausen 2021 Plot's Watch 'SIHH 2021' 44MM ", price: '₹650',  originalPrice: '₹1599', sale: '60%Off',),
  ShopModel( image: AppAssets.kSneakers, description: 'Labbin White Sneakers For Men and Female.', price: '₹650', originalPrice: '₹1250', sale: '70%Off', ),
  ShopModel( image: AppAssets.kSneakers, description: "Mammon Women's Handbag (Set of 3, Beige)", price: '₹750', originalPrice: '₹1999', sale: '60%Off', ),
  
  
];
  
  