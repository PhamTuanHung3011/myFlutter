import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:re_flash_chat/components/rounded_button.dart';
import 'package:re_flash_chat/screens/login_screen.dart';
import 'package:re_flash_chat/screens/registrantor_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static final String id = 'welcomeScreen';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    // TODO: implement initState
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller!, curve: Curves.easeIn);
    controller?.forward();
    controller?.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Welcome to Flash Chat',
            style: TextStyle(color: Colors.amberAccent),
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: animation?.value * 100,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Flash Chat',
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold),
                      speed: const Duration(milliseconds: 30),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 45.0,
            ),
            RoundedButton(
              colour: Colors.lightBlueAccent,
              onPress: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
              title: 'Log In',
            ),
            RoundedButton(
                colour: Colors.lightBlueAccent,
                title: 'Register',
                onPress: () {
                  Navigator.pushNamed(context, RegistersScreen.id);
                })
          ],
        ),
      ),
    );
  }
}
