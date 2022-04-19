import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';


class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    this.title = '',
    this.press = '',
  }) : super(key: key);
  final String title;
  final press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          Spacer(),
          TextButton(
            onPressed: press,
            style: TextButton.styleFrom(
            backgroundColor: KPrimariColor, 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )
            ), 
            child: Text(
              'More',
              style: TextStyle( color: Colors.white),
              ) 
            )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
 this.text='',
  }) : super(key: key);
 final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4.0),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),
            ),
          ),
          
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4.0),
              height: 7,
              color: KPrimariColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}

