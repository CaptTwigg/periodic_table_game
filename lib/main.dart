import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:periodic_table_game/PeriodicElement.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ElementPage(),
      ),
    );
  }
}

class ElementPage extends StatefulWidget {
  @override
  _ElementPageState createState() => _ElementPageState();
}

class _ElementPageState extends State<ElementPage> {
  List<PeriodicElement> elements = [];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await loadJson();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: elements.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return Text(elements[index].name);
                }),
          ),
        ],
      ),
    );
  }

  loadJson() async {
    String data = await rootBundle.loadString('assets/Elements.json');
    var jsonResult = json.decode(data);
    for (var element in jsonResult["elements"]) {
      elements.add(new PeriodicElement.fromJson(element));
    }
  }
}
