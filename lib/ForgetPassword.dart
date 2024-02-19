import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForgetPasswordPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();

  void _resetPassword(BuildContext context) async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text);
    } catch (e) {
      print("error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      labelText: 'Email', border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () => _resetPassword(context),
                        child: Text("Mudar senha")),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/');
                        },
                        child: Text("Não mudar"))
                  ],
                )
              ],
            )),
      ),
    );
  }
}
