import 'package:bacapp/screens/SubCours.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LesCours extends StatefulWidget {
  static const routeName = '/lesCours';
  const LesCours({Key? key}) : super(key: key);

  @override
  State<LesCours> createState() => _LesCoursState();
}

class _LesCoursState extends State<LesCours> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String? categoryTitle = routeArgs['name'];
    final String docId = routeArgs['id'];
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
            .doc(docId)
            .collection(categoryTitle)
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
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(SubCours.routeName, arguments: {
                        'id': docs[index].id,
                        'name': docs[index]['name'],
                        'ordre': docs[index]['ordre'],
                        'secondeCollection': categoryTitle,
                        'firstDoc': docId,
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
