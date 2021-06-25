import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fnl/apicon/appicon.dart';

import 'package:fnl/pages/ani.dart';
import 'package:fnl/pages/gest.dart';
import 'package:fnl/pages/info.dart';
import 'package:fnl/pages/jet.dart';
import 'package:fnl/main.dart';
import 'package:fnl/pages/prop.dart';

import 'user.dart';

void main() {
  runApp(MyDrover());
}

class MyDrover extends StatefulWidget {
  @override
  _MyDroverState createState() => _MyDroverState();
}

class _MyDroverState extends State<MyDrover> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Text(
              User.kullaniciAdi,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Divider(
            height: 1,
            color: Colors.amber,
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ModelPlans()),
              );
            },
            title: Text("Anasayfa"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JetSayfa()),
              );
            },
            title: Text("Jet Uçak Planları"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PropSayfa()),
              );
            },
            title: Text("Prop Uçak Planları"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GestSayfa()),
              );
            },
            title: Text("Gesture"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AniSayfa()),
              );
            },
            title: Text("Aylık Kullanıcı"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
            title: Text("Plan Tasarımcısı"),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 400),
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secAnimation,
                          Widget child) {
                        return ScaleTransition(
                          alignment: Alignment.center,
                          scale: animation,
                          child: child,
                        );
                      },
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secAnimation) {
                        return HakSayfa();
                      }));
            },
            title: Text("Hakkımızda"),
          ),
        ],
      ),
    );
  }
}
