import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fnl/main.dart';
import 'package:fnl/pages/gest.dart';

import 'drov.dart';

class HakSayfa extends StatelessWidget {
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
        body: HakkUyg(),
      ),
    );
  }
}

class HakkUyg extends StatelessWidget {
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
                child: new GestureDetector(
                  child: Center(
                    child: Text(
                        'Bu uygulama Dr. Öğretim üyesi Ahmet Cevahir Çınar tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301062 numaralı Okan KILIÇ tarafından 30 Nisan 2021 günü yapılmıştır'),
                  ),
                  onDoubleTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ModelPlans()),
                    );
                  },
                  onTapUp: (e) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GestSayfa()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  color: Colors.blueGrey,
                  child: new GestureDetector(
                    child: new Text(''),
                    onTapCancel: () {
                      ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
                          content: new Text('Tıklar gibi yaptın vazgeçtin')));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
