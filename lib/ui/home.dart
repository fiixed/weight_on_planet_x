import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State {
  int radioValue = 0;

  void handleRadioValueChanged(int value) {
    setState(() {
      radioValue = value;
      print(radioValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weight on Planet X'),
          backgroundColor: Colors.black38,
        ),
        backgroundColor: Colors.blueGrey,
        body: Container(
          alignment: Alignment.topCenter,
          child: ListView(
            padding: const EdgeInsets.all(1.5),
            children: <Widget>[
              Image.asset(
                'images/planet.png',
                height: 133.0,
                width: 200.0,
              ),
              Container(
                margin: const EdgeInsets.all(3.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    TextField(
                      controller: null,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Your Weight on Earth',
                        hintText: 'In Pounds!',
                        icon: Icon(Icons.person_outline),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5.0)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Radio<int>(
                            activeColor: Colors.brown,
                            value: 0,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text(
                          'Pluto',
                          style: TextStyle(color: Colors.white30),
                        ),
                        Radio<int>(
                            activeColor: Colors.red,
                            value: 1,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text(
                          'Mars',
                          style: TextStyle(color: Colors.white30),
                        ),
                        Radio<int>(
                            activeColor: Colors.orangeAccent,
                            value: 2,
                            groupValue: radioValue,
                            onChanged: handleRadioValueChanged),
                        Text(
                          'Venus',
                          style: TextStyle(color: Colors.white30),
                        ),
                      ],
                    ),
                    Padding(padding: EdgeInsets.all(15.6)),
                    Text(
                      'Hello There',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 19.4,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
