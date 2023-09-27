import 'package:bhookmandu/model/product_model.dart';
import 'package:bhookmandu/state/cart_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productNotifer = StateNotifierProvider((_) => CartState());

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
    return Container(
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
              Consumer(builder: (context, ref, _) {
                ref.watch(productNotifer);
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        ref
                            .read(productNotifer.notifier)
                            .updateQuantity(product, product.productQuantity--);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 30,
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.green, width: 2),
                            bottom: BorderSide(color: Colors.green, width: 2),
                            left: BorderSide(color: Colors.green, width: 2),
                          ),
                        ),
                        child: Text(
                          "-",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(fontSize: 24),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 2),
                      ),
                      child: Text(
                        product.productQuantity.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(fontSize: 18),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        ref
                            .read(productNotifer.notifier)
                            .updateQuantity(product, product.productQuantity++);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        width: 30,
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Colors.green, width: 2),
                            bottom: BorderSide(color: Colors.green, width: 2),
                            right: BorderSide(color: Colors.green, width: 2),
                          ),
                        ),
                        child: Text(
                          "+",
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(fontSize: 24),
                        ),
                      ),
                    ),
                  ],
                );
              })
            ],
          ),
          Positioned(
            width: width * 0.45,
            bottom: 0,
            child: InkWell(
                onTap: () {},
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
                )),
          )
        ],
      ),
    );
  }
}
