import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:formatifweb/transfert.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController _numberController = TextEditingController();

  List<ListeElement> liste = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _numberController,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.blue),
                      hintText: "Entrer le nombre"
                  ),
                ),
                ElevatedButton(
                  onPressed: () async {
                    String valeur = _numberController.text;
                    try{
                      var response = await Dio().get('https://fourn6-mobile-prof.onrender.com/exam/representations/'+valeur);
                      print(response);
                      var listeJSON = response.data as List;
                      var listeElement = listeJSON.map((elementJSON) {
                        return ListeElement.fromJson(elementJSON);
                      }).toList();
                      liste = listeElement;
                      setState(() {});
                    } catch(e){
            
                    }
                  }, child: Text("Va chercher les représentations")
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: liste.length,
                    itemBuilder: (context, index){
                      return ListTile(
                        leading: Text(liste[index].nombre.toString()),
                        title: Text(liste[index].description.toString()),
                        subtitle: Text(liste[index].representation.toString()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}