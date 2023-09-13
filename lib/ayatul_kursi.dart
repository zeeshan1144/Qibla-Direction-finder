import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

void main() {
  runApp(MyPdfViewerApp());
}

class MyPdfViewerApp extends StatelessWidget {
  final pdfController = PdfController(
    document: PdfDocument.openAsset('assets/ggggg.pdf'),
  );

  Widget pdfView() => PdfView(
        controller: pdfController,
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PDF Viewer'),
        ),
        body: Center(child: pdfView()),
      ),
    );
  }
}
