import 'package:flutter/material.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      body: Center(
          child: Text(
            "You have successfully logged in",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
      ),
    );
  }
}