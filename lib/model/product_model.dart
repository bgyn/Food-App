import 'package:uuid/uuid.dart';

class Product {
  String productId;
  final String productImage;
  final String productName;
  final String productPrice;
  int productQuantity = 1;
  Product({
    String? productId,
    required this.productImage,
    required this.productName,
    required this.productPrice,
    int? productQuantity,
  }) : productId = productId ?? const Uuid().v4();

  Product update({int? quantity}) => Product(
        productId: productId,
        productImage: productImage,
        productName: productName,
        productPrice: productPrice,
        productQuantity: quantity,
      );
}

