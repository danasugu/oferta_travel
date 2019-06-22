import 'package:flutter/material.dart';
import '../models/oferte_model.dart';

class OferteList extends StatelessWidget {
  final List<OferteModel> oferta;

  OferteList(this.oferta);

  Widget build(context) {
    return ListView.builder(
      itemCount: oferta.length,
      itemBuilder: (context, int index) {
        return Image.network(oferta[index].url);
      },
    );
  }
}
