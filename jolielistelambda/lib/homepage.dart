import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<int> listeLuigi = [];
  @override
  void initState() {
    super.initState();
    listeLuigi = [];

    int a = 0;
    int b = 1;

    while (a <= 100) {
      listeLuigi.add(a);
      int next = a + b;
      a = b;
      b = next;
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      //body: Center(
          //child: ListView(
            //children: listeLuigi.map((e) => Text(e.toString())).toList()
            //),
          //),
      //),
       body: Center(
           child: ListView.builder(
             itemCount: listeLuigi.length,
             itemBuilder: (context, index){
               return
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ListTile(
                       tileColor: Colors.blue,
                         textColor: Colors.white,
                         shape:  RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10),
                           side: BorderSide(color: Colors.black),
                         ),
                         titleAlignment: ListTileTitleAlignment.center,
                         title: Center(child: Text(listeLuigi[index].toString()))

                     ),
                   );
             },
           )
       ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}