import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:bacapp/screens/Fields.dart';
import 'package:bacapp/screens/NameEmail.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with AfterLayoutMixin<SplashScreen> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Timer(Duration(seconds: 3),
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
      appBar: AppBar(title: const Text('addd')),
    );
  }
}
