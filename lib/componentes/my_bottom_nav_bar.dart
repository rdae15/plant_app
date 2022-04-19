import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';



class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2.0, 
        right: kDefaultPadding * 2.0,
        bottom: kDefaultPadding, 
        ),
      height: 80.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35.5,
            color: KPrimariColor.withOpacity(0.38),
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton( 
          icon: SvgPicture.asset('assets/icons/flower.svg'), 
          onPressed: (){},
        ),
        IconButton( 
          icon: SvgPicture.asset('assets/icons/heart-icon.svg'), 
          onPressed: (){},
        ),
        IconButton( 
          icon: SvgPicture.asset('assets/icons/user-icon.svg'), 
          onPressed: (){},
        )
        ],
      ),
    );
  }
}