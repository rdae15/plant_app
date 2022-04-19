import 'package:flutter/material.dart';
import 'package:plant_app/componentes/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Body(),
      )
    );
  }
}