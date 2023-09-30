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

  Product update({Product? product,int? quantity}) => Product(
        productId: product!.productId,
        productImage: product.productImage,
        productName: product.productName,
        productPrice: product.productPrice,
        productQuantity: quantity,
      );

  
}

