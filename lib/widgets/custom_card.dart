import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Function onPress;
  CustomCard({this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.credit_card,
                          color: Color(0xFF222222),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'FATURA ATUAL',
                              style: TextStyle(
                                  color: Color(0xFF3498db),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                  fontFamily: 'Roboto'),
                            ),
                            Text(
                              'R\$  42,93',
                              style: TextStyle(
                                color: Color(0xFF3498db),
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: 'Limite disponivel  '),
                                  TextSpan(
                                    text: 'R\$ 1.557,07',
                                    style: TextStyle(
                                        color: Color(0xFFbadc58),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container()
                      ],
                    ),
                    Container(
                      width: 10.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFFbadc58),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            width: 10.0,
                            height: 15.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF3498db),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.settings),
                    SizedBox(
                      width: 10.0,
                    ),
                    Flexible(
                      child: Text(
                        'Compra mais recente em Itunes.Com/Bill no valor de R\$ 22,90 sexta',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
