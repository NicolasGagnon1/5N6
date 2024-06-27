import 'package:flutter/material.dart';

import 'generated/l10n.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Expanded(
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(

                                        alignment: AlignmentDirectional.centerStart,
                                        color: Colors.deepPurple,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(S.of(context).macs, style: TextStyle(color: Colors.white),),
                                        )
                                    )
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.blue,
                                  ),
                                )
                              ]
                          ),
                          Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                      color: Colors.blue,
                                    ),
                                ),
                                Expanded(
                                    flex: 4,
                                    child: Container(

                                        alignment: AlignmentDirectional.centerStart,
                                        color: Colors.purple,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(S.of(context).vive, style: TextStyle(color: Colors.white),),
                                        )
                                    )
                                ),
                              ]
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Container(

                                        alignment: AlignmentDirectional.centerStart,
                                        color: Colors.deepPurpleAccent,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text(S.of(context).prof, style: TextStyle(color: Colors.white),),
                                        )
                                    )
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    color: Colors.blue,
                                  ),
                                )
                              ]
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}