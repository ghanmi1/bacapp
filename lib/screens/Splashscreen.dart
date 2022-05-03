import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../screens/Fields.dart';
import '../screens/NameEmail.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with AfterLayoutMixin<SplashScreen> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Timer(const Duration(seconds: 3),
          (() => Navigator.of(context).pushReplacementNamed(Fields.routeName)));
    } else {
      await prefs.setBool('seen', true);
      Timer(
        const Duration(seconds: 3),
        (() => Navigator.of(context).pushReplacementNamed(NameEmail.routeNme)),
      );
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'Bac En Poche ',
        style: TextStyle(
            color: Colors.white, fontFamily: 'Quicksqnd', fontSize: 26),
      )),
    );
  }
}
