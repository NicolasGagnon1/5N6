import 'package:flutter/material.dart';

import 'EcranA.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Truc{
  late int id;
  late String name;
}

class _MyHomePageState extends State<MyHomePage> {
  List<Truc> listeEnMemoire = [];
  @override
  void initState() {
    super.initState();
    listeEnMemoire = [];
    for (var i = 1; i < 6; i++) {
      Truc element = Truc();
      element.id = i;
      element.name = "item #" + i.toString();
      listeEnMemoire.add(element);
    }
  }

  final truc = Truc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: ListView.builder(
          itemCount: listeEnMemoire.length,
            itemBuilder: (context, index){

              return ListTile(
                leading: Image.network('https://t3.ftcdn.net/jpg/03/52/60/14/360_F_352601435_lNGUMiHlZUxE8CmDHuwiagHF6pIn629h.jpg?i=${index}'),
                  title:ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EcranA(leParametre: listeEnMemoire[index]),
                        ),
                      );
                    },
                    child: Text('${listeEnMemoire[index].name}'),
                  )
              );
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EcranA(leParametre: listeEnMemoire[index]),
                    ),
                  );
                },
                child: const Text('Clique'),
              );
            }

        )

      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}