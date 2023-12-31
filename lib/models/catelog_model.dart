import 'package:stylish/data/app_assets.dart';

class CatalogModel {
  String image;
  String title;
  String description;
  String price;
  String originalPrice;
  String sale;
  String rating;
  CatalogModel(
      {required this.title,
      required this.image,
      required this.description,
      required this.price,
      required this.originalPrice,
      required this.sale,
      required this.rating});
}

List<CatalogModel> catalogItem = [
  CatalogModel(
      title: 'Vincent Chase Polarized',
      image: AppAssets.kKurta,
      description: 'Matte Gunmetal Black Full \nRim Rectangle Sunglasses.',
      price: '₹1500',
      originalPrice: '₹2499',
      sale: '40%Off',
      rating: '56890'),
  CatalogModel(
      title: 'HRX by Hrithik Roshan',
      image: AppAssets.kJogers,
      description: 'Matte Gunmetal Black Full \nRim Rectangle Sunglasses.',
      price: '₹2499',
      originalPrice: '₹4999',
      sale: '50%Off',
      rating: '344567'),
      CatalogModel(
      title: 'Vincent Chase Polarized',
      image: AppAssets.kKurta,
      description: 'Matte Gunmetal Black Full \nRim Rectangle Sunglasses.',
      price: '₹1500',
      originalPrice: '₹2499',
      sale: '40%Off',
      rating: '56890'),
];
