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
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_bag,
            color: Colors.white,
          ),
        ),
        Text(
          "Rs 0.00",
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
