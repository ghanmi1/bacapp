import 'package:bacapp/screens/lesCours.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class LesFilliers extends StatefulWidget {
  static const routeName = '/LesFilliers ';
  const LesFilliers({Key? key}) : super(key: key);

  @override
  State<LesFilliers> createState() => _LesFilliersState();
}

class _LesFilliersState extends State<LesFilliers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2ème Bac'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        ),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('bac').snapshots(),
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
                      Navigator.of(context).pushNamed(LesCours.routeName,
                          arguments: {
                            'id': docs[index].id,
                            'name': docs[index]['name']
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
