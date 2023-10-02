import 'package:bhookmandu/data/model/product_model.dart';
import 'package:bhookmandu/pages/product_detail_page.dart';
import 'package:bhookmandu/state/provider/cart_list_provider.dart';
import 'package:bhookmandu/state/provider/product_notifer.dart';
import 'package:bhookmandu/widgets/quantity_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryProduct extends ConsumerWidget {
  final Product product;
  const CategoryProduct({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;

    void update(Product product, int? quantity) {
      ref
          .read(productNotiferProvider.notifier)
          .updateQuantity(product, quantity);
    }

    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(product: product),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        width: width * 0.45,
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: height * 0.2,
                  child: CachedNetworkImage(
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    product.productName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 12),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "From Rs. ${product.productPrice}",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
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
                  onIncreament: () =>
                      update(product, product.productQuantity++),
                ),
              ],
            ),
            Positioned(
              width: width * 0.45,
              bottom: 0,
              child: InkWell(
                onTap: () {
                  ref.read(cartListProvider.notifier).addToCart(product);
                },
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Text(
                      "Add To Cart",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
