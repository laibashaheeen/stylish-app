import 'package:stylish/data/app_assets.dart';

class WrapModel {
  
  final String text;
  final String image;
  WrapModel({ required this.text, required this.image});
}


List<WrapModel> wrapItem = [
  WrapModel( text: 'Nearest Store', image: AppAssets.kLocation),
  WrapModel( text: 'VIP', image: AppAssets.kLockOutlined),
  WrapModel( text: 'Return policy', image: AppAssets.kReturn),
 
];