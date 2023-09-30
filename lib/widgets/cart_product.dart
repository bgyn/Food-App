import 'package:bhookmandu/data/model/product_model.dart';
import 'package:bhookmandu/state/provider/cart_list_provider.dart';
import 'package:bhookmandu/state/provider/product_notifer.dart';
import 'package:bhookmandu/widgets/quantity_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartProduct extends ConsumerWidget {
  const CartProduct({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void update(Product product, int? quantity) {
      ref.read(productNotifer.notifier).updateQuantity(product, quantity);
    }

    final width = MediaQuery.of(context).size.width * 1;
    final height = MediaQuery.of(context).size.height * 1;
    final cartList = ref.watch(cartListProvider);
    return Consumer(
      builder: (context, ref, _) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * 0.6,
                child: ListView.builder(
                    itemCount: cartList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: width * 0.1,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(cartList[index].productName),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          ref
                                              .read(cartListProvider.notifier)
                                              .removeFromCart(cartList[index]);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: const BoxDecoration(
                                            color: Color.fromRGBO(
                                                211, 100, 104, 1),
                                          ),
                                          child: Text(
                                            "Remove",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: width * .25,
                                    height: height * 0.08,
                                    child: CachedNetworkImage(
                                      placeholder: (context, url) =>
                                          const Center(
                                              child:
                                                  CircularProgressIndicator()),
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: imageProvider,
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      imageUrl: cartList[index].productImage,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(cartList[index].productPrice),
                              Center(
                                child: ProductQuantiy(
                                  product: cartList[index],
                                  onDecreament: () => update(
                                      cartList[index],
                                      cartList[index].productQuantity == 1
                                          ? null
                                          : cartList[index].productQuantity--),
                                  onIncreament: () => update(cartList[index],
                                      cartList[index].productQuantity++),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const Divider(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Subtotal",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Rs.",
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    ),
                    Text(
                      '100',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Text(
                      "Delivery Rs. 125.00",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Grand Total",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Rs.",
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          "1000",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
