import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'lib_http.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController _val1Controller = TextEditingController();
  final TextEditingController _val2Controller = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _val1Controller.dispose();
    _val2Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                controller: _val1Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.blue),
                  hintText: "Valeur 1",
                ),
              ),
              TextFormField(
                controller: _val2Controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.blue),
                  hintText: "Valeur 2",
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  int value1 = int.parse(_val1Controller.text);
                  int value2 = int.parse(_val2Controller.text);

                  try{
                    var response = await sendVals(value1, value2);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("La valeur la plus grande est : " + response.toString())));
                  } on DioException catch(e){
                    if(e.response?.data == "TropCourt"){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ERREUR : ")));
                    } else if(e.response?.data == "NombresEgaux"){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ERREUR : Les deux valeurs sont pareils")));
                    }
                  }

                },
                child: Text("Envoyer"),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}