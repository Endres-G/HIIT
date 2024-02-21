import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final String payload;

  const NotificationPage({Key? key, required this.payload}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina da notificação"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(payload),
          ],
        ),
      ),
    );
  }
}
