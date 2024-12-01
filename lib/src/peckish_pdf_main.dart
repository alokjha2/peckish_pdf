import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDFReader extends StatelessWidget {
  final String pdfPath;

  const PDFReader({Key? key, required this.pdfPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Reader'),
      ),
      body: PDFView(
        filePath: pdfPath,
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: true,
        pageFling: true,
        onRender: (pages) {
          print('PDF has $pages pages.');
        },
        onError: (error) {
          print('Error: $error');
        },
        onPageChanged: (currentPage, totalPages) {
          print('Page $currentPage of $totalPages');
        },
      ),
    );
  }
}
