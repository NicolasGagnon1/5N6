import 'package:flutter/material.dart';

class Yapalooza extends StatefulWidget {
  const Yapalooza({super.key});

  @override
  State<Yapalooza> createState() => _YapaloozaState();
}

class _YapaloozaState extends State<Yapalooza> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,

        title: Text("Yapalooza", style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Expanded(
          child: Container(
            color: Colors.lightGreenAccent,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  ElevatedButton(
                    child: Text("L'espace entre les boutons et le texte sont les mêmes"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      foregroundColor: Colors.black,
                      elevation: 0,
                    ),
                    onPressed: () {},
                  ),
                  Text("Texte au milieu"),
                  ElevatedButton(
                    child: Text("Pipo popi"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.amber,
                      foregroundColor: Colors.black,
                      elevation: 0,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.blue,
        onPressed: (){

        },
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_left),
      ),
    );
  }
}
