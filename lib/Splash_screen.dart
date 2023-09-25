import 'dart:async';

import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  initState() {
    super.initState();

    Duration duration = const Duration(seconds: 3);

    Timer(duration, () {
      Navigator.of(context).pushReplacementNamed('Education');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            // Container(
            //   height: 450,
            //   width: 450,
            Icon(
              Icons.mark_chat_read,
              size: 200,
            ),

            CircularProgressIndicator(
              color: Colors.blue,
            ),
            Text(
              "Add Your MarkSheet",
              style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 40,
                  color: Colors.teal),
            )
          ],
        ),
      ),
    );
  }
}
