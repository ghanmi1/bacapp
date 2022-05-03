import 'package:flutter/material.dart';

import '../screens/Subjects.dart';
import '../main.dart';

class FieldsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(SubjectsScreen.routeName);
          },
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Card(
              color: mycolor1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    child: FittedBox(
                      fit: BoxFit.none,
                      child: Text(
                        'sciences maths A',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    )),
              ),
            ),
          ),
        );
      },
      itemCount: 4,
    );
  }
}
