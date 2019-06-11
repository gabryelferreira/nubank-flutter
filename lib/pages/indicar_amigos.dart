import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/widgets/custom_card.dart';

class IndicarAmigosPage extends StatefulWidget {
  @override
  _IndicarAmigosPageState createState() => _IndicarAmigosPageState();
}

class _IndicarAmigosPageState extends State<IndicarAmigosPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: 'hero-fatura',
        child: CustomCard(),
      ),
    );
  }
}