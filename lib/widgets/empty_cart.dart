import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        width: width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromRGBO(255, 243, 208, 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Cart Empty!",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              "Your Shopping is empty",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Icon(
              Icons.shopping_cart,
              size: 150,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Continue Shopping",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
