import 'package:flutter/material.dart';

import 'screen2.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget siteLogo = new Container(
      padding: const EdgeInsets.only(top: 100.0),
      child: new Image.asset(
        'assets/carserv.jpg',
        width: 180.0,
        height: 180.0,
      ),
    );

    Widget subtitleTextSection = new Container(
      padding: const EdgeInsets.only(
          left: 40.0, right: 40.0, bottom: 200.0, top: 60),
      child: new Text(
        'Receive discounts on purchases and services made right for you',
        textAlign: TextAlign.center,
        style: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
      ),
    );

//    footer
    Column register(String label) {
      return new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              child: Text(label),
              onPressed: () {
                print(label.toLowerCase());
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(9, 6, 52, 1.0)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              )),
        ],
      );
    }

    return new MaterialApp(
      title: 'Flutter Demo',
      home: new Scaffold(
        body: new Container(
          child: new ListView(
            children: [
              siteLogo,
              subtitleTextSection,
            ],
          ),
        ),
        bottomNavigationBar: new Container(
          height: 50.0,
          color: Color.fromRGBO(9, 6, 52, 1.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              register('SIGN-IN'),
              register('REGISTER'),
            ],
          ),
        ),
      ),
    );
  }
}