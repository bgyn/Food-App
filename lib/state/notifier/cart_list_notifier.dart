import 'package:bhookmandu/data/model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartListNotifer extends StateNotifier<List<Product>> {
  CartListNotifer([List<Product>? cartList]) : super(cartList ?? <Product>[]);

  void addToCart(Product product) {
    state = [...state, product];
  }

  void removeFromCart(Product product) {
    state = state
        .where((thisProduct) => thisProduct.productId != product.productId)
        .toList();
  }

  double grandTotal() {
    double total = 1;
    for (final product in state) {
      total = total +(product.productQuantity*product.productPrice);
    }
    return total;
  }
}
