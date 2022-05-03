import 'package:flutter/material.dart';

import '../widgets/Fields_Widget.dart';

class Fields extends StatefulWidget {
  static const routeName = '/Fields';

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FieldsWidget(),
    );
  }
}
