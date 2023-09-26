import 'package:bhookmandu/widgets/carousel_slider.dart';
import 'package:bhookmandu/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      drawer: const AppDrawer(),
      body: ListView(
        children: const [
          SizedBox(
            height: 5,
          ),
          CarouselSliders(),
        ],
      ),
    );
  }
}
