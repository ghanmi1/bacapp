import 'package:bacapp/screens/SubCours.dart';
import 'package:bacapp/screens/pdfScreen.dart';
import 'package:bacapp/screens/viewPdf.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'package:bacapp/screens/LesFilliers.dart';
import 'package:bacapp/screens/lesCours.dart';
import './screens/NameEmail.dart';
import './screens/Splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

const mycolor1 = Color.fromRGBO(230, 245, 252, 1);
const mycolor = Color.fromRGBO(230, 220, 245, 1);
const colortext = Color.fromRGBO(25, 24, 24, 1);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
                headline6: const TextStyle(
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromRGBO(25, 24, 24, 1),
            )),
      ),
      routes: {
        '/': (context) => LesFilliers(),
        NameEmail.routeNme: (context) => NameEmail(),
        LesCours.routeName: (context) => LesCours(),
        SubCours.routeName: (context) => SubCours(),
        PdfScreen.routeName: (context) => PdfScreen(),
        Viewpdf.routeName: (context) => Viewpdf(),
        LesFilliers.routeName: (context) => LesFilliers(),
      },
    );
  }
}
