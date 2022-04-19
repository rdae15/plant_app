import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';


class FuturePlants extends StatelessWidget {
  const FuturePlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FuturePlantCard(image: 'assets/images/bottom_img_1.png', press: (){}),
          FuturePlantCard(image: 'assets/images/bottom_img_2.png', press: (){}),
        ],
      ),
    );
  }
}

class FuturePlantCard extends StatelessWidget {
  const FuturePlantCard({
    Key? key,
    this.image = '',
    this.press,
  }) : super(key: key);
  final String image;
  final press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press  ,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding, 
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
          ),
        width: size.width * 0.8,
        height: 185.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            fit: BoxFit.cover,
          image: AssetImage(image),
          )
          ),
      ),
    );
  }
}


