import 'package:flutter/material.dart';

import '../widgets/Course_Widget.dart';

class Course extends StatelessWidget {
  static const routeName = '/Course ';

  const Course({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(42, 42, 42, 1),
        elevation: 0,
        title: Text(
          'limites',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Opensans',
              fontWeight: FontWeight.w700),
        ),
      ),
      body: CourseWidget(),
    );
  }
}
