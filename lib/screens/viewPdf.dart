import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:flutter/material.dart';

class Viewpdf extends StatefulWidget {
  static const routeName = '/Viewpdf';
  const Viewpdf({Key? key}) : super(key: key);

  @override
  State<Viewpdf> createState() => _ViewpdfState();
}

class _ViewpdfState extends State<Viewpdf> {
  @override
  Widget build(BuildContext context) {
    PdfViewerController? _pdfViewerController;
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final String fileUrl = routeArgs['fileUrl'];
    final String namepdf = routeArgs['name'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          namepdf,
          style: const TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        ),
      ),
      body: SfPdfViewer.network(
        fileUrl,
        controller: _pdfViewerController,
      ),
    );
  }
}
