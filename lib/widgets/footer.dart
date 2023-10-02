import 'package:bhookmandu/data/local/quick_links.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final quickLinkList = QuickLinks().getList();
  Footer({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> quickLinkWidget = List.generate(
        quickLinkList.length,
        (index) => Padding(
              padding: const EdgeInsets.only(bottom: 5, top: 5),
              child: Row(
                children: [
                  Image.asset(
                    'assets/right.png',
                    color: Colors.white,
                    width: 18,
                  ),
                  Text(
                    "${quickLinkList[index]}",
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ));
    final widht = MediaQuery.of(context).size.width * 1;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade700,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Bhookmandu by Chimes",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: widht * 0.4,
              child: Image.asset('assets/logo_0.png'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Quick Links",
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              ...quickLinkWidget,
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Contact Detail",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Whatsapp/Viber: +977-9851108888",
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              InkWell(
                child: Image.asset('assets/facebook.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                child: Image.asset('assets/instagram.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Copyright 2023. All right reserved",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
