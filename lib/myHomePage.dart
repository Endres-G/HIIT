import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title = ''})
      : super(key: key); // Tornando o título opcional

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget
            .title), // Usando o título fornecido ou vazio se não fornecido
      ),
      body: const Center(
        child: Column(
          children: [Text("PROFESSOR")],
        ),
      ),
    );
  }
}
