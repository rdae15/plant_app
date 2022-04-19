import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

class IconsCard extends StatelessWidget {
  const IconsCard({
    Key? key,
    this.icon = ''
  
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: 
        EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 1.5),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: KbackGroundColor,
        borderRadius: BorderRadius.circular(6.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15.0),
            blurRadius: 22.0,
            color: KPrimariColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15.0, -15.0),
            blurRadius: 20,
            color: Colors.white,
          ),

        ],

      ),
      child: SvgPicture.asset(icon),

    );
  }
}