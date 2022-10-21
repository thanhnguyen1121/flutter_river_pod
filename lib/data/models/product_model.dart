import 'package:river_pod_demo/utils/base.dart';

class ProductModel extends UniqueItem {
  final int id;
  final String name;
  final double price;


  @override
  int get uniqueId => id;

  const ProductModel({
    required this.id,
    required this.name,
    required this.price,
  });
}
