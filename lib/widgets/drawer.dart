import 'package:bhookmandu/pages/home_page.dart';
import 'package:bhookmandu/pages/signup_page.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 1;
    return Drawer(
      width: width * 0.6,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Text(
                "Home",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Shop",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "My Account",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SigUpPage()));
              },
              child: Text(
                "Sign In",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
