

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> listeNoms = [];
  @override
  void initState() {
    super.initState();
    listeNoms = [];
    listeNoms.add('Nico');
    listeNoms.add('Caro');
    listeNoms.add('Antoine');
    listeNoms.add('Pandachat');
    listeNoms.add('Terroriste dattaque');
  }

  void shuffle(){
    setState((){
      listeNoms.shuffle();
    });
  }

  void moveUp(int index) {
    if (index > 0) {
      setState(() {
        final String name = listeNoms.removeAt(index);
        listeNoms.insert(index - 1, name);
        if(isListSorted()){
          listeNoms.shuffle();
        }
      });
    }
  }

  void moveDown(int index) {
    if (index < listeNoms.length - 1) {
      setState(() {
        final String name = listeNoms.removeAt(index);
        listeNoms.insert(index + 1, name);
        if(isListSorted()){
          listeNoms.shuffle();
        }
      });
    }
  }

  bool isListSorted() {
    for (int i = 0; i < listeNoms.length - 1; i++) {
      if (listeNoms[i].compareTo(listeNoms[i + 1]) > 0) {
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: ListView.builder(
          itemCount: listeNoms.length,
          itemBuilder: (context, index){
            return ListTile(
              leading: ElevatedButton(
                onPressed: () {
                  moveUp(index);
                },
                child: Text('+'),
              ),
                trailing: ElevatedButton(
                  onPressed: () {
                    moveDown(index);
                  },
                  child: Text('-'),
                ),
                title: Text(listeNoms[index])
            );
          },
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}