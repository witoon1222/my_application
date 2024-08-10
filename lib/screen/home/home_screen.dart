import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class _HomeScreenState extends State<HomeScreen> {
  final List<String>  sliders = [
    "https://www.cmru.ac.th/assets/images/banners/th/11-07-2024/82b8bbc8b96e46e6ce80c13396279dca2775be28.jpg",
    "https://www.cmru.ac.th/assets/images/banners/th/01-08-2024/099a5da16556c47d67fd872260f393af298a24f8.jpg",
    "https://www.cmru.ac.th/assets/images/banners/th/01-08-2024/6c68fa2bd3850ce0b6b6290b5e7b0c5ba3dd97c4.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250,
          child: Swiper(
            itemCount: sliders.length,
            autoplay: true,
            loop: true,
            itemBuilder: (context, index) {
              return Image.network(
                sliders[index],
                fit: BoxFit.cover,
              );
            },
          ),
        )
      ]
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
