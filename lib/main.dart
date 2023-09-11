import 'package:elancer2_ui_app/Sceerns/launche_sceern.dart';
import 'package:elancer2_ui_app/Sceerns/logen_screen.dart';
import 'package:elancer2_ui_app/Sceerns/onboarding/onbording_scarren.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LancheSceern(),
        '/on_bording_screen': (context) => const onbording_scaeen(),
        '/logen_screen': (context) => const LoginScreen(  ),
      },

    );
  }
}
