import 'package:bhookmandu/widgets/category_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryMenu extends ConsumerWidget {
  final String categoryTitle;
  const CategoryMenu({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final height = MediaQuery.of(context).size.height * 1;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                categoryTitle,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(
                width: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(255, 151, 51, 1),
                ),
                onPressed: () {},
                child: Text(
                  "View All >",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              )
            ],
          ),
          //nepali classic menu
          SizedBox(
            height: height * 0.42,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const CategoryProduct();
              },
            ),
          )
        ],
      ),
    );
  }
}
