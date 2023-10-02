import 'package:bhookmandu/pages/cart_page.dart';
import 'package:bhookmandu/state/provider/cart_list_provider.dart';
import 'package:bhookmandu/state/provider/product_notifer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      titleSpacing: 0,
      title: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          CachedNetworkImage(
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            imageBuilder: (context, imageProvider) => Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                image:
                    DecorationImage(image: imageProvider, fit: BoxFit.contain),
              ),
            ),
            imageUrl: "https://bhokmandu.com.np/uploads/logo_0.png",
          ),
          const Spacer(),
          Text(
            "Cart",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
          Consumer(
            builder: ((context, ref, _) {
              ref.watch(productNotiferProvider);
              ref.watch(cartListProvider);
              return Text(
                ref
                    .read(cartListProvider.notifier)
                    .grandTotal()
                    .toStringAsFixed(2),
                style: Theme.of(context).textTheme.bodySmall,
              );
            }),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
