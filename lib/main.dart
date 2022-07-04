import 'package:flutter/material.dart';

import 'login/login.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 框架',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const Login(),
    );
  }
}
