import 'package:flutter/material.dart';

class Fields extends StatefulWidget {
  const Fields({Key? key}) : super(key: key);

  static const routeName = '/Fields';

  @override
  State<Fields> createState() => _FieldsState();
}

class _FieldsState extends State<Fields> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('rfhdr')),
    );
  }
}
