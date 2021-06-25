import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fnl/main.dart';
import 'package:fnl/pages/info.dart';
import 'package:fnl/pages/user.dart';

import 'drov.dart';

class GestSayfa extends StatelessWidget {
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
        body: GestUyg(),
      ),
    );
  }
}

class GestUyg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blueGrey,
                height: 300,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ModelPlans()),
                    );
                  },
                  onLongPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HakSayfa()),
                    );
                  },
                  child: Text('Gesture'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
