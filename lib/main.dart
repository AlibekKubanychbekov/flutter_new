import 'package:flutter/material.dart';
import 'package:flutter_new/modules/welcome/welcome_screen.dart';

const userName = 'Alibek';
const password = 'flutter';

void main() {
  runApp(const FlutterNew());
}

class FlutterNew extends StatelessWidget {
  const FlutterNew({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
