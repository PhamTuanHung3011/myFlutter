import 'package:flutter/material.dart';
import 'package:re_flash_chat/constants.dart';

class LoginScreen extends StatefulWidget {
  static final String id = 'LoginScreen';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              style: TextStyle(color: Colors.brown),
              onChanged: (value) {},
              decoration: kTextFieldDecoraton.copyWith(
                  hintText: 'Enter your email', labelText: 'Email'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              style: const TextStyle(color: Colors.brown),
              onChanged: (value) {},
              decoration: kTextFieldDecoraton.copyWith(
                  hintText: 'Enter your password', labelText: 'Password'),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {},
                  minWidth: 200.0,
                  height: 40.0,
                  child: Text('Log In'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
