import 'package:bacapp/screens/Courses.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class SubjectsWidget extends StatelessWidget {
  const SubjectsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(CoursesScreen.routeName);
          },
          child: Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 15),
            child: Card(
              color: mycolor1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: FittedBox(
                      fit: BoxFit.none,
                      child: Text(
                        ' maths ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
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
