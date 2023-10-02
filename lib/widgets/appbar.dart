import 'package:bhookmandu/pages/cart_page.dart';
import 'package:bhookmandu/state/provider/cart_list_provider.dart';
import 'package:bhookmandu/state/provider/product_notifer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      title: Text(
        "Bhookmandu",
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
      actions: [
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
    );
  }
}
