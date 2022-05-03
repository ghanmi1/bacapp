import 'package:bacapp/main.dart';
import 'package:bacapp/screens/PdfScreen.dart';
import 'package:flutter/material.dart';

class CourseWidget extends StatelessWidget {
  const CourseWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(PdfScreen.routeName);
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
                    height: MediaQuery.of(context).size.height * 0.06,
                    child: FittedBox(
                      fit: BoxFit.none,
                      child: Text(
                        'cours pdf ',
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
      itemCount: 3,
    );
  }
}
