import 'package:bhookmandu/state/provider/cart_list_provider.dart';
import 'package:bhookmandu/widgets/cart_product.dart';
import 'package:bhookmandu/widgets/empty_cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartList = ref.watch(cartListProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Cart",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
        ),
      ),
      body: cartList.isEmpty ? const EmptyCart() : const CartProduct(),
    );
  }
}
