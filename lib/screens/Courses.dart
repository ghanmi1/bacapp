import 'package:flutter/material.dart';

import '../widgets/Courses_Widget.dart';

class CoursesScreen extends StatelessWidget {
  static const routeName = '/Coursesscreen ';
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(42, 42, 42, 1),
        elevation: 0,
        title: Text(
          'maths',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Opensans',
              fontWeight: FontWeight.w700),
        ),
      ),
      body: CoursesWidget(),
    );
  }
}
