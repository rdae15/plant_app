import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';

import 'icons_cards.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3.0 ),
      child: SizedBox(
        height: size.height * 0.8 ,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding *2.0,
                  ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        onPressed: (){
                          Navigator.pop(context);
                        }
                      ),
                    ),
                    Spacer(),
                    IconsCard(icon: 'assets/icons/sun.svg'),
                    IconsCard(icon: 'assets/icons/icon_2.svg'),
                    IconsCard(icon: 'assets/icons/icon_3.svg'),
                    IconsCard(icon: 'assets/icons/icon_4.svg'),
    
                  ],
                ),
              )
              ),
              Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63.0),
                    bottomLeft: Radius.circular(63.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10.0),
                      blurRadius: 60.0,
                      color: KPrimariColor.withOpacity(0.29),
                    )
                  ],
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img.png'),
                  )
                ),
              ),
      
          ],
        ),
      ),
    );
  }
}
