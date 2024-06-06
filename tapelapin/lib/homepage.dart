import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _indexLapin = Random().nextInt(4);
  int _flops = 0;
  int _pafs = 0;
  void gererTape(int index) {
    if(this._indexLapin == index){
      this._pafs++;
      _indexLapin = Random().nextInt(4);
    } else{
      this._flops++;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    print(this._indexLapin);
    var b1 = MaterialButton(
        onPressed: () {
          gererTape(0);
        },
      child: Text(this._indexLapin == 0 ? 'Lapin' : 'Taupe'),
    );
    var b2 = MaterialButton(
      onPressed: () {
        gererTape(1);
      },
      child: Text(this._indexLapin == 1 ? 'Lapin' : 'Taupe'),
    );
    var b3 = MaterialButton(
      onPressed: () {
        gererTape(2);
      },
      child: Text(this._indexLapin == 2 ? 'Lapin' : 'Taupe'),
    );
    var b4 = MaterialButton(
      onPressed: () {
        gererTape(3);
      },
      child: Text(this._indexLapin == 3 ? 'Lapin' : 'Taupe'),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Container(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Pafs : ' + this._pafs.toString(),
                  style: TextStyle(color: Colors.green, fontSize: 20)
                ),
                Text(
                    'Flops : ' + this._flops.toString(),
                    style: TextStyle(color: Colors.red, fontSize: 20)
                )
              ]
            ),
            const Text(
              'Tape le lapin',
              style: TextStyle(fontSize: 40),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b1,
                b2
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                b3,
                b4
              ],
            )
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}