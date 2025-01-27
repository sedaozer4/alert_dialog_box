import 'package:flutter/material.dart';
import 'alert_dialog_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Dialog Box',
      debugShowCheckedModeBanner: false,
      home: AlertDialogPage(),
    );
  }
}

