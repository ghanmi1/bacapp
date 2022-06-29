import 'dart:async';
import 'package:after_layout/after_layout.dart';
import 'package:bacapp/screens/LesFilliers.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      Timer(
          const Duration(seconds: 3),
          (() =>
              Navigator.of(context).pushReplacementNamed(NameEmail.routeNme)));
    } else {
      await prefs.setBool('seen', true);
      Timer(
        const Duration(seconds: 3),
        (() =>
            Navigator.of(context).pushReplacementNamed(LesFilliers.routeName)),
      );
    }
  }

  @override
  void afterFirstLayout(BuildContext context) => checkFirstSeen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        child: const Center(
          child: Text(
            'Bac En Poche ',
            style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
