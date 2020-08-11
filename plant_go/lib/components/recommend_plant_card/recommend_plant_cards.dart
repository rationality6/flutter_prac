import 'package:flutter/material.dart';
import 'package:plant_go/components/recommend_plant_card/recommend_plant_card.dart';

class RecommendPlantCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendPlantCard(
                  image: 'assets/images/image_1.png',
                  title: 'Samantha',
                  country: "Russia",
                  price: 440,
                  press: () {},
                ),
                RecommendPlantCard(
                  image: 'assets/images/image_2.png',
                  title: 'Samantha',
                  country: "Russia",
                  price: 440,
                  press: () {},
                ),
                RecommendPlantCard(
                  image: 'assets/images/image_3.png',
                  title: 'Samantha',
                  country: "Russia",
                  price: 440,
                  press: () {},
                ),
                RecommendPlantCard(
                  image: 'assets/images/image_1.png',
                  title: 'Samantha',
                  country: "Russia",
                  price: 440,
                  press: () {},
                ),
                RecommendPlantCard(
                  image: 'assets/images/image_2.png',
                  title: 'Samantha',
                  country: "Russia",
                  price: 440,
                  press: () {},
                ),
                RecommendPlantCard(
                  image: 'assets/images/image_3.png',
                  title: 'Samantha',
                  country: "Russia",
                  price: 440,
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
