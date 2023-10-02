import 'package:bhookmandu/data/local/beverages.dart';
import 'package:bhookmandu/data/local/burger_pasta.dart';
import 'package:bhookmandu/data/local/desserts.dart';
import 'package:bhookmandu/data/local/dumplings.dart';
import 'package:bhookmandu/data/local/nepali_classic.dart';
import 'package:bhookmandu/data/local/pizzas.dart';
import 'package:bhookmandu/data/local/rice_noodles.dart';
import 'package:bhookmandu/widgets/customappbar.dart';
import 'package:bhookmandu/widgets/carousel_slider.dart';
import 'package:bhookmandu/widgets/categories.dart';
import 'package:bhookmandu/widgets/category_menu.dart';
import 'package:bhookmandu/widgets/drawer.dart';
import 'package:bhookmandu/widgets/footer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const AppDrawer(),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const CarouselSliders(),
          const SizedBox(
            height: 10,
          ),
          Categories(),
          CategoryMenu(
            categoryTitle: "Nepali Classic",
            categoryList: NepaliClassic().nepaliClassicList,
          ),
          CategoryMenu(
            categoryTitle: "Dumplings",
            categoryList: Dumplings().dumplingList,
          ),
          CategoryMenu(
            categoryTitle: "Rice & Noodles",
            categoryList: RiceNoodles().riceNoodlesList,
          ),
          CategoryMenu(
            categoryTitle: "Burger & Pastas",
            categoryList: BurgerPasta().burgerPastaList,
          ),
          CategoryMenu(
            categoryTitle: "Pizzas",
            categoryList: Pizzas().pizzasList,
          ),
          CategoryMenu(
            categoryTitle: "Desserts",
            categoryList: Deserts().desertsList,
          ),
          CategoryMenu(
            categoryTitle: "Beverages",
            categoryList: Beverages().beveragesList,
          ),
          Footer(),
        ],
      ),
    );
  }
}
