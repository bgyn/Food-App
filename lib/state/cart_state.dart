import 'package:bhookmandu/model/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartState extends StateNotifier {
  CartState([List? cart]) : super(cart ?? []);

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
  void updateQuantity(Product updateProduct,int? quantity) {
    state = state.map((e) =>
        e.productId == updateProduct.productId ? e.update(quantity: quantity) : e).toList();
  }
}
