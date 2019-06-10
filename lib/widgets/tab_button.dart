import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabButton extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color color;

  TabButton({@required this.icon, @required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: this.color != null ? this.color : Color(0xFF9460B2),
      child: Container(
        width: MediaQuery.of(context).size.height/4.5 - 40,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              this.icon,
              Text(
                this.text,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
