import 'package:flutter/material.dart';
import 'package:fnl/pages/jet2.dart';

import 'drov.dart';
import 'jet1.dart';
import 'jet3.dart';

class JetSayfa extends StatelessWidget {
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
        body: AnaJet(),
      ),
    );
  }
}

class AnaJet extends StatefulWidget {
  @override
  _AnaJetState createState() => _AnaJetState();
}

class _AnaJetState extends State<AnaJet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/f161.jpeg"),
                    minRadius: 50,
                    maxRadius: 100,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                child: Text("F-16"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JetBir()),
                  );
                },
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  minRadius: 100,
                  maxRadius: 100,
                  backgroundImage: AssetImage("images/f181.jpeg"),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                child: Text("F-18"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JetIki()),
                  );
                },
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  minRadius: 100,
                  maxRadius: 100,
                  backgroundImage: AssetImage("images/f41.jpg"),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                child: Text("F-4"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => JetUc()),
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
