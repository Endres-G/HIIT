import 'package:flutter/material.dart';
import 'package:hiit/localNotification.dart';
import 'package:hiit/notificationPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(
      {super.key, required this.title}); // Tornando o título opcional

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  listenNotifications() {
    print("listening to notifications");
    LocalNotification.onClickNotification.stream.listen((event) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => NotificationPage(payload: event)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget
            .title), // Usando o título fornecido ou vazio se não fornecido
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton.icon(
                icon: Icon(Icons.notifications_outlined),
                onPressed: () {
                  LocalNotification.showSimpleNotification(
                      title: "HIIT",
                      body: "BORA TREINAR!",
                      payload: "que isso");
                },
                label: Text("Notificação simples")),
            ElevatedButton.icon(
                icon: Icon(Icons.timer_outlined),
                onPressed: () {
                  LocalNotification.showPeriodicNotifications(
                      title: "HIIT",
                      body: "BORA TREINAR hoje!",
                      payload: "que isso");
                },
                label: Text("Notificação periódica")),
            ElevatedButton.icon(
                icon: Icon(Icons.timer_outlined),
                onPressed: () {
                  LocalNotification.showScheduleNotification(
                      title: "HIIT",
                      body: "ta na agenda o treino de hj!",
                      payload: "que isso");
                },
                label: Text("Notificação agendada")),
            ElevatedButton.icon(
                icon: Icon(Icons.timer_outlined),
                onPressed: () {
                  LocalNotification.cancel(1);
                },
                label: Text("cancela notificação"))
          ],
        ),
      ),
    );
  }
}
