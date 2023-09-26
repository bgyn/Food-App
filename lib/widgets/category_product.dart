import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryProduct extends ConsumerWidget {
  const CategoryProduct({super.key});

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
                  imageUrl:
                      'https://images.unsplash.com/photo-1528279027-68f0d7fce9f1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGZhc3QlMjBmb29kfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Product Name",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "From Rs. 0.00",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
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
                      "1",
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(fontSize: 18),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
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
              )
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
