

import 'package:flutter/material.dart';
import 'package:plant_app/componentes/future_plant.dart';
import 'package:plant_app/componentes/recomend_plant.dart';
import 'package:plant_app/componentes/screens/home/title_with_more_bbtn.dart';
import 'package:plant_app/constants.dart';
import '../../header_with_searchbox.dart';


class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recomended', press: (){}),
          RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plant', press: (){}),
          FuturePlants(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

