import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_panda_salles_app/authentication/auth_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 8), () async {
      Navigator.push(context, MaterialPageRoute(builder: (c) => AuthScreen()));
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/splash.jpg"),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("Seller Food",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 40,
                        fontFamily: "Signatra",
                        letterSpacing: 3)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
