
import 'package:flutter/material.dart';
import 'package:plant_app/componentes/screens/details/components/details_screen.dart';
import 'package:plant_app/constants.dart';


 class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCard(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Rusia',
            price: 440,
            press: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(),
                  ),
                );
            },
          ),
          RecomendPlantCard(
          image: 'assets/images/image_2.png',
          title: 'Angelica',
          country: 'Rusia',
          price: 440,
          press: (){
            Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailsScreen(),
                  ),
                );
          },
      ),
       RecomendPlantCard(
          image: 'assets/images/image_3.png',
          title: 'Samantha',
          country: 'Rusia',
          price: 440,
          press: (){},
      ),
        ],
      ),
    );
  }
}

class RecomendPlantCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  final Function() press;
  const RecomendPlantCard({
    this.image= '',
    this.title= '', 
    this.country = '', 
    this.price = 0, 
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
      left: kDefaultPadding,
      top: kDefaultPadding / 2,
      bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
        Image.asset(image),
        GestureDetector(
          onTap: press,
          child: Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: KPrimariColor.withOpacity(0.23),
                )
              
              ]
            ),
            child: Row(
              children: <Widget>[
                RichText(
                text: TextSpan(
                  children: [ TextSpan(text: '$title\n'.toUpperCase(),
                  style: Theme.of(context).textTheme.button,
                  ),
                  TextSpan(text: '$country'.toUpperCase(),
                   style: TextStyle(color: KPrimariColor.withOpacity(0.5),
                  ),
                  ),
                  ],
                ),
                ),
                Spacer(),
                Text(
                  '\$$price',
                  style: Theme.of(context)
                  .textTheme
                  .button!
                  .copyWith(color: KPrimariColor),
                  
                  )
              ],
            ),
          ),
        )
        ],

      ) ,

    );
  }
}
