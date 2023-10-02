import 'package:flutter/material.dart';
import 'package:flutter_application_19/screan/piano_playground.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PianoPlayGround(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Play Piano',
            style: Theme.of(context).textTheme.headline2,
          ),
          FlutterLogo(
            textColor: Colors.orange,
            size: 300,
          ),
          Text(
            'Enjoy your Music',
            style: Theme.of(context).textTheme.headline2,
          )
        ],
      ),
    );
  }
}
