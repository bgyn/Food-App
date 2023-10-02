import 'package:bhookmandu/data/model/product_model.dart';
import 'package:bhookmandu/state/provider/product_notifer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuantityBar extends ConsumerWidget {
  final Function()? onIncreament;
  final Function()? onDecreament;
  final Product product;
  const QuantityBar({
    super.key,
    required this.product,
    required this.onIncreament,
    required this.onDecreament,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(productNotiferProvider);
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onDecreament,
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
            style:
                Theme.of(context).textTheme.labelSmall?.copyWith(fontSize: 18),
          ),
        ),
        InkWell(
          onTap: onIncreament,
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
  }
}
