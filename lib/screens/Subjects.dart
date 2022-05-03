import 'package:flutter/material.dart';

import '../widgets/SubjectsWidget.dart';

class SubjectsScreen extends StatelessWidget {
  static const routeName = '/SubjectsScreen';

  const SubjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(42, 42, 42, 1),
        elevation: 0,
      ),
      body: SubjectsWidget(),
    );
  }
}
