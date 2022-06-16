import 'package:flutter/material.dart';
import 'package:re_flash_chat/screens/login_screen.dart';
import 'package:re_flash_chat/screens/registrantor_screen.dart';
import 'package:re_flash_chat/screens/welcome_screen.dart';

void main() => runApp(const FlashChat());

class FlashChat extends StatelessWidget {
  const FlashChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        RegistersScreen.id: (context) => const RegistersScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
      },
    );
  }
}
