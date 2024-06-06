import 'package:flutter/material.dart';

class EcranA extends StatefulWidget {
  final String leParametre;

  const EcranA({Key? key, required this.leParametre}) : super(key:key);

  @override
  State<EcranA> createState() => _EcranAState();
}

class _EcranAState extends State<EcranA> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecran A'),
      ),
      body: Text('Tu as navigué vers A avec ${widget.leParametre}'),
    );
  }
}