import 'package:bhookmandu/data/model/product_model.dart';
import 'package:bhookmandu/state/provider/cart_list_provider.dart';
import 'package:bhookmandu/state/provider/product_notifer.dart';
import 'package:bhookmandu/widgets/customappbar.dart';
import 'package:bhookmandu/widgets/drawer.dart';
import 'package:bhookmandu/widgets/quantity_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductDetailPage extends ConsumerWidget {
  final Product product;
  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void update(Product product, int? quantity) {
      ref
          .read(productNotiferProvider.notifier)
          .updateQuantity(product, quantity);
    }

    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const AppDrawer(),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              height: height * 0.25,
              child: CachedNetworkImage(
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: imageProvider, fit: BoxFit.cover),
                  ),
                ),
                imageUrl: product.productImage,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(product.productName),
            const SizedBox(
              height: 10,
            ),
            Text(product.productPrice.toString()),
            const SizedBox(
              height: 10,
            ),
            QuantityBar(
              product: product,
              onDecreament: () => update(
                  product,
                  product.productQuantity == 1
                      ? null
                      : product.productQuantity--),
              onIncreament: () => update(product, product.productQuantity++),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                ref.read(cartListProvider.notifier).addToCart(product);
              },
              child: Container(
                alignment: Alignment.center,
                width: width,
                height: height * 0.05,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: Text(
                  "Add To Cart",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: width,
              height: height * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(10),
              child: Text(
                "Product Detail",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}
