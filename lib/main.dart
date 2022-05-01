import 'package:bacapp/screens/Fields.dart';
import 'package:bacapp/screens/NameEmail.dart';
import 'package:bacapp/screens/Splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
        scaffoldBackgroundColor: const Color.fromRGBO(42, 42, 42, 1),
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
        '/': (context) => const SplashScreen(),
        NameEmail.routeNme: (context) => const NameEmail(),
        Fields.routeName: (context) => const Fields(),
      },
    );
  }
}
