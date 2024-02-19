import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyLoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _logarUser(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text, password: _passwordController.text);

      // Registro bem-sucedido, você pode acessar as informações do usuário aqui
      if (_emailController.text == "gabrielpf.end@gmail.com") {
        Navigator.pushReplacementNamed(context, '/home');
      } else {
        Navigator.pushReplacementNamed(context, '/othershome');
      }
      // Redirecionar para a tela de login
    } catch (e) {
      print("error: $e");
      print("bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                    labelText: 'Email', border: OutlineInputBorder()),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    labelText: "Senha", border: OutlineInputBorder()),
                obscureText: true,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () => _logarUser(context),
                      child: Text("Logar")),
                  const SizedBox(width: 16),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/register');
                      },
                      child: Text("Registrar"))
                ],
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/forget');
                  },
                  child: Text("Esqueci a senha")),
            ],
          ),
        ),
      )),
    );
  }
}
