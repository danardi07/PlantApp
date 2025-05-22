import 'package:flutter/material.dart';
import 'package:plantapp/screens/details/components/body.dart';
import 'package:plantapp/services/plant.dart';

class DetailsScreen extends StatelessWidget {
  final Plant plant;

  const DetailsScreen({required Key key, required this.plant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        plant: plant,
      ),
    );
  }
}
