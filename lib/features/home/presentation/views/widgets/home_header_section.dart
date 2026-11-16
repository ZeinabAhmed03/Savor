import 'package:flutter/material.dart';

class HomeHeaderSection extends StatelessWidget {
  const HomeHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Explore by Category',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          'Discover handcrafted culinary traditions and seasonal collections',
          style: TextStyle(
            fontSize: 12,

            color: Color.fromARGB(255, 146, 114, 106),
          ),
        ),
      ],
    );
  }
}
