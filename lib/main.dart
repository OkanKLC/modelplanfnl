import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fnl/pages/drov.dart';
import 'package:fnl/pages/jet.dart';
import 'package:fnl/pages/login.dart';
import 'package:fnl/pages/prop.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Login()));
}

class ModelPlans extends StatelessWidget {
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
        ),
        drawer: MyDrover(),
        body: AnaSayfa(),
      ),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/f16.jpg"),
                    minRadius: 50,
                    maxRadius: 150,
                  ),
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                  child: Text("Jet Uçak Planları"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JetSayfa()),
                    );
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CircleAvatar(
                    minRadius: 100,
                    maxRadius: 150,
                    backgroundImage: AssetImage("images/spitfire.jpg"),
                  ),
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(primary: Colors.blueGrey[800]),
                  child: Text("Prop Uçak Planları"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PropSayfa()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
