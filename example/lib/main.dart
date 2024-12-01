import 'package:peckish_pdf/peckish_pdf.dart'; // Import your package

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF Reader Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PDFReaderExample(),
    );
  }
}

class PDFReaderExample extends StatelessWidget {
  const PDFReaderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Reader Example'),
      ),
      body: Center(
        child: PDFReader(pdfPath: 'assets/bookpdf.pdf',), // Use the widget from your package
      ),
    );
  }
}
