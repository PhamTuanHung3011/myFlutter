import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color colour;
  final String title;
  final Function() onPress;

  RoundedButton(
      {required this.colour, required this.title, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        // add colour
        color: colour,
        borderRadius: BorderRadius.circular(27.0),
        // navigator to Login screen
        child: MaterialButton(
          // add function onpress
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            // add title
            '$title',
            style: const TextStyle(
                color: Colors.brown, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
