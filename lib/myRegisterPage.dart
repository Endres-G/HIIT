import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyRegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  void _registerUser(BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text);
      // Registro bem-sucedido, você pode acessar as informações do usuário aqui
      User? user = userCredential.user;
      if (user != null) {
        await user.updateDisplayName(_nameController.text);

        // Aqui você pode usar as informações do usuário como o UID, e-mail, etc.
        print('Usuário registrado com sucesso: ${user.uid}');
        print("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa");

        // Redirecionar para a tela de login
        Navigator.pushReplacementNamed(context, '/');
      }
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
                controller: _nameController,
                decoration: const InputDecoration(
                    labelText: 'Nome', border: OutlineInputBorder()),
              ),
              SizedBox(height: 16),
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
              const SizedBox(
                height: 16,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    onPressed: () => _registerUser(context),
                    child: Text("Registrar")),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: Text("Já possuo conta"))
              ]),
            ],
          ),
        ),
      ),
    ));
  }
}
