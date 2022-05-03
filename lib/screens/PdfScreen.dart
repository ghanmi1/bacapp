import 'package:bacapp/widgets/Pdf_Screen_Widgets.dart';
import 'package:flutter/material.dart';

class PdfScreen extends StatelessWidget {
  static const routeName = '/Pdfs';
  const PdfScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(42, 42, 42, 1),
        elevation: 0,
        title: Text(
          'les exercices pdf ',
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Opensans',
              fontWeight: FontWeight.w700),
        ),
      ),
      body: PdfScreenWidget(),
    );
  }
}
