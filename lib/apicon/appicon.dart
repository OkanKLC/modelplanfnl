import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fnl/model/loadData.dart';
import 'package:fnl/pages/drov.dart';
import 'package:http/http.dart' as http;

Future<LoadData> apiCall() async {
  final response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/OkanKLC/jsonapi/main/ap2.json'));
  if (response.statusCode == 200) {
    return LoadData.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        body: MyHomePage(title: ''),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<LoadData>(
        future: apiCall(),
        // ignore: missing_return
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
                child: Center(
                    child: Text(
              "İsim: ${snapshot.data!.title} \n \n \n \n" +
                  "Görev: ${snapshot.data!.body}\n \n \n",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blueGrey),
            )));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
