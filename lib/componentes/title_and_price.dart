import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';


class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    this.name = '',
    this.country = '',
    this.price = 0, 
  }) : super(key: key);
  final String name;
  final String country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: '$name\n',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: KTextColor, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: country,
                style: TextStyle(
                  fontSize: 20.0,
                  color: KPrimariColor,
                  fontWeight: FontWeight.w300,
                )
              ),

            ],

          ),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context)  
                .textTheme
                .headline5!
                .copyWith(color: KPrimariColor),


          )

        ],

      ),
    );
  }
}


