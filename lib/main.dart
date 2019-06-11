import 'package:flutter/material.dart';
import 'package:nubank/widgets/custom_card.dart';
import 'package:nubank/widgets/tab_button.dart';
import 'package:nubank/pages/indicar_amigos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Color(0xFF612F74),
          accentColor: Color(0xFF612F74)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color(0xFF612F74),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                // decoration: BoxDecoration(color: Colors.green),
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'images/nubank_logo.png',
                            height: 50,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Gabryel',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 5,
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                // decoration: BoxDecoration(color: Colors.red),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: Hero(
                          tag: 'hero-fatura',
                          child: CustomCard(
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (context) => IndicarAmigosPage(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4.5,
              // width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    TabButton(
                      icon: Icon(Icons.sentiment_very_satisfied,
                          color: Colors.white),
                      text: "Indicar amigos",
                    ),
                    TabButton(
                      icon: Icon(Icons.lock_open, color: Colors.white),
                      text: "Bloquear cartao",
                    ),
                    TabButton(
                      icon: Icon(Icons.credit_card, color: Colors.white),
                      text: "Cartao Virtual",
                    ),
                    TabButton(
                      icon: Icon(Icons.monetization_on, color: Colors.white),
                      text: "Transferir",
                    ),
                    TabButton(
                      icon: Icon(Icons.card_membership, color: Colors.white),
                      text: "Pagar",
                    ),
                    TabButton(
                      icon: Icon(Icons.attach_money, color: Colors.white),
                      text: "Cobrar",
                    ),
                    TabButton(
                      icon: Icon(Icons.money_off, color: Colors.white),
                      text: "Depositar",
                    ),
                    TabButton(
                      icon: Icon(Icons.settings, color: Colors.white),
                      text: "Ajustar limite",
                    ),
                    TabButton(
                      icon: Icon(Icons.subject, color: Colors.white),
                      text: "Organizar atalhos",
                      color: Color(0x229460B2),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
