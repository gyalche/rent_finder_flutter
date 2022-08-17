
import 'package:flutter/material.dart';
import 'package:rental_app/screen/home/widget/SearchInput.dart';
import 'package:rental_app/screen/home/widget/WelcomeText.dart';
import 'package:rental_app/screen/home/widget/best_offer.dart';
import 'package:rental_app/screen/home/widget/categoriesData.dart';
import 'package:rental_app/screen/home/widget/custom_app_bar.dart';
import 'package:rental_app/screen/home/widget/recommended_house.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Theme.of(context).backgroundColor,
        appBar:const CustomAppBar(),
        body: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 WelcomeText(),
                SearchInput(),
                Categories(),
                RecommendedHouse(),
                BestOffer(),
            ],
          )
        )
    );
  }
}