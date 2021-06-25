import 'package:flutter/material.dart';
import 'package:fnl/pages/prop1.dart';
import 'package:fnl/pages/prop2.dart';
import 'package:fnl/pages/prop3.dart';

import 'drov.dart';
import 'info.dart';

class PropSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
          title: Text(
            'Model Plans',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        drawer: MyDrover(),
        body: AnaProp(),
      ),
    );
  }
}

class AnaProp extends StatefulWidget {
  @override
  _AnaPropState createState() => _AnaPropState();
}

class _AnaPropState extends State<AnaProp> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/thunder1.jpg"),
                    minRadius: 50,
                    maxRadius: 100,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                child: Text("P47 Thunderbolt"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PropBir()),
                  );
                },
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    minRadius: 100,
                    maxRadius: 100,
                    backgroundImage: AssetImage("images/spit1.jpg"),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                child: Text("Spitfire"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PropIki()),
                  );
                },
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    minRadius: 100,
                    maxRadius: 100,
                    backgroundImage: AssetImage("images/bf1.jpg"),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                child: Text("Bf-109"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PropUc()),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
