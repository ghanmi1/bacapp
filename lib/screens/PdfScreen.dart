import 'package:bacapp/screens/viewPdf.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PdfScreen extends StatefulWidget {
  static const routeName = '/pdfScreen';
  const PdfScreen({Key? key}) : super(key: key);

  @override
  State<PdfScreen> createState() => _PdfScreenState();
}

class _PdfScreenState extends State<PdfScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String? categoryTitle = routeArgs['name'];
    final String secondeCollection = routeArgs['secondeCollection'];
    final int thirdCollection = routeArgs['thirdCollection'];
    final String secondeDoc = routeArgs['secondeDoc'];
    final String docId = routeArgs['id'];
    final int ordre = routeArgs['ordre'];
    final String firstDoc = routeArgs['firstDoc'];
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(child: Text(categoryTitle!)),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('bac')
            .doc(firstDoc)
            .collection(secondeCollection)
            .doc(secondeDoc)
            .collection(thirdCollection.toString())
            .doc(docId)
            .collection(ordre.toString())
            .orderBy('ordre', descending: false)
            .snapshots(),
        builder:
            (BuildContext ctx, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
          if (streamSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final docs = streamSnapshot.data!.docs;
          return ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: docs.length,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    textColor: Colors.white,
                    tileColor: const Color(0xfff7892b),
                    title: Text(
                      docs[index]['name'],
                      style: const TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    leading: const Icon(Icons.picture_as_pdf),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onTap: () {
                      Navigator.of(context).pushNamed(Viewpdf.routeName,
                          arguments: {
                            'name': docs[index]['name'],
                            'fileUrl': docs[index]['lienpdf']
                          });
                    },
                  ),
                );
              });
        },
      ),
    );
  }
}
