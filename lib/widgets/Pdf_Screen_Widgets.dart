import 'package:flutter/material.dart';

class PdfScreenWidget extends StatelessWidget {
  const PdfScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.centerLeft,
          child: FlatButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.picture_as_pdf,
                color: Colors.white,
              ),
              label: Text(
                'title of pdf ',
                style: TextStyle(color: Colors.white),
              )),
        );
      },
      itemCount: 5,
    );
  }
}
