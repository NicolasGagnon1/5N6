import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void _incrementCounter() {

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      color: Colors.red,
                      height: 200,
                    )
                ),
                Expanded(
                    flex: 1,
                    child: Text(
                      'YO',
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    )
                ),
                Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.black,
                      height: 100,
                    )
                )
              ],
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: () {},
                      child: const Text('Bouton du bas', style: TextStyle(color: Colors.white))
                    )
                  )
                ],
              ),
            )
          ]
        ),
      ),

    );
  }
}