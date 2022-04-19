import 'package:flutter/material.dart';
import 'package:plant_app/componentes/image_and_icons.dart';
import 'package:plant_app/componentes/title_and_price.dart';
import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(name: 'Angelica', country: 'Rusia', price: 440),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: 
                    TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,

                      ),
                    backgroundColor: KPrimariColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: 
                      BorderRadius.only(
                        topRight:
                        Radius.circular(20.0),
                      ),
                     ),
                  ),
                  onPressed: (){}, 
                  child: Text('Buy Now'),
                ),
              ),
              Expanded(
                child: 
                TextButton(
                  onPressed: (){}, 
                  child: Text('Descripcion'),
                )
                )
            ],
          ),
          SizedBox()
        ],
        
      ),
    );
  }
}

