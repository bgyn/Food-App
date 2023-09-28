import 'package:bhookmandu/data/model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductNotifer extends StateNotifier {
  ProductNotifer([List? cart]) : super(cart ?? []);

  int getlength() => state.length;

  void addToCart(Product product) {
    state = [...state, product];
  }

  void removeFromCart(Product product) {
    state = state
        .map((thisProduct) => thisProduct.productId != product.productId)
        .toList();
  }

  //update quantity
  void updateQuantity(Product updateProduct, int? quantity) {
    state = state
        .map((product) => product.productId == updateProduct.productId
            ? product.update(
                quantity: quantity,
                product: updateProduct,
              )
            : product)
        .toList();
  }
}
