import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class OthersHomePage extends StatefulWidget {
  const OthersHomePage({Key? key, this.title = ''})
      : super(key: key); // Tornando o título opcional

  final String title;

  @override
  State<OthersHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<OthersHomePage> {
  String? userName; // Variável para armazenar o nome do usuário

  @override
  void initState() {
    super.initState();
    _loadUserName(); // Carregar o nome do usuário ao inicializar a tela
  }

  Future<void> _loadUserName() async {
    // Verificar se o usuário está autenticado
    User? user = FirebaseAuth.instance.currentUser;

    // Verificar se o usuário está autenticado e possui um nome associado
    if (user != null && user.displayName != null) {
      setState(() {
        userName = user.displayName;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (userName != null) // Se o nome do usuário estiver disponível
              Text("Bem-vindo, $userName"), // Exibir o nome do usuário
            const Text("ALUNO,"), // Texto adicional
          ],
        ),
      ),
    );
  }
}
