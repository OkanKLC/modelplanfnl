import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'drov.dart';

class JetUc extends StatelessWidget {
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
              onPressed: (){
                Navigator.pop(context);
              },

            ),
          ],



        ),
        drawer: MyDrover(
        ),
        body: JucUyg(),
      ),
    );
  }
}

class JucUyg extends StatelessWidget {
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,

                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.blueGrey,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Image.asset('images/f41.jpg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.blueGrey,
                  ),
                  child: Center(child: Text(
                    'F4 JET UÇAĞI PLANLARI',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.blueGrey,
                  ),
                  child: Center(child: Text(
                    'Plan İndir',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),

                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.blueGrey,
                  ),
                  child: Center(child: Text(
                    'Model İçin Gereken Malzemeler',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                    ),

                  ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(16.0),
                    color: Colors.blueGrey,
                  ),
                  child: Center(child: Text(
                      '\n - 4x Fotoblok \n - Hızlı yapıştırıcı \n - Sıcak Silikokn \n - Maket Bıçağı \n',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      )
                  ),
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
