import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:printing/printing.dart';
import 'modals/globals.dart';

class PDFpage extends StatefulWidget {
  const PDFpage({Key? key}) : super(key: key);

  @override
  State<PDFpage> createState() => _PDFpageState();
}

class _PDFpageState extends State<PDFpage> {
  // Future<Uint8List> generatePDF() async{
  //
  //   final image=(await rootBundle.load('assets/images/Education.jpg'))
  //       .buffer
  //       .asUint8List();
  // }

  final pdf = pw.Document();

  @override
  // initState() {
  //   super.initState();
  //   pdf.addPage(pw.Page(
  //       pageFormat: PdfPageFormat.a4,
  //       build: (pw.Context context) {
  //         return pw.Container(
  //           margin: pw.EdgeInsets.only(top: 10),
  //           alignment: pw.Alignment.center,
  //           child: pw.Column(
  //             crossAxisAlignment: pw.CrossAxisAlignment.center,
  //             children: [
  //               pw.Row(children: [
  //                 pw.Text(
  //                   "Result of Final Exam",
  //                   style: pw.TextStyle(fontSize: 26),
  //                 ),
  //                 pw.Divider(
  //                   color: PdfColors.black,
  //                   // indent: 60,
  //                   // endIndent: 60,
  //                   thickness: 1,
  //                 ),
  //               ]),
  //               pw.Row(
  //                 children: [
  //                   pw.SizedBox(
  //                     width: 10,
  //                   ),
  //                   pw.Text(
  //                     "Class:",
  //                     style: pw.TextStyle(
  //                         color: PdfColors.black,
  //                         fontWeight: pw.FontWeight.bold),
  //                   ),
  //                   pw.SizedBox(
  //                     width: 5,
  //                   ),
  //                   pw.Text("${Global.Class}"),
  //                   // Divider(
  //                   //   color: Colors.black,
  //                   //   indent: 5,
  //                   //   endIndent: 5,
  //                   //   thickness: 1,
  //                   // ),
  //                   pw.SizedBox(
  //                     width: 60,
  //                   ),
  //                   pw.Text("G.R.No.",
  //                       style: pw.TextStyle(
  //                           color: PdfColors.black,
  //                           fontWeight: pw.FontWeight.bold)),
  //                   pw.SizedBox(
  //                     width: 5,
  //                   ),
  //                   pw.Text("${Global.GRno}"),
  //                   pw.SizedBox(
  //                     width: 35,
  //                   ),
  //                   pw.Text("Roll No.",
  //                       style: pw.TextStyle(
  //                           color: PdfColors.black,
  //                           fontWeight: pw.FontWeight.bold)),
  //                   pw.SizedBox(
  //                     width: 5,
  //                   ),
  //                   pw.Text("${Global.RollNo}"),
  //                 ],
  //               ),
  //               pw.SizedBox(
  //                 height: 5,
  //               ),
  //               pw.Row(
  //                 children: [
  //                   pw.SizedBox(
  //                     width: 10,
  //                   ),
  //                   pw.Text("Name:",
  //                       style: pw.TextStyle(
  //                           color: PdfColors.black,
  //                           fontWeight: pw.FontWeight.bold)),
  //                   pw.SizedBox(
  //                     width: 5,
  //                   ),
  //                   pw.Text("${Global.FullName}"),
  //                   pw.SizedBox(
  //                     width: 35,
  //                   ),
  //                   pw.Text("A.Y.",
  //                       style: pw.TextStyle(
  //                           color: PdfColors.black,
  //                           fontWeight: pw.FontWeight.bold)),
  //                   pw.SizedBox(
  //                     width: 5,
  //                   ),
  //                   pw.Text("${Global.AcademicYear}"),
  //                 ],
  //               ),
  //               pw.Divider(
  //                 color: PdfColors.black,
  //                 // indent: 115,
  //                 // endIndent: 115,
  //                 thickness: 1,
  //               ),
  //               pw.Row(
  //                 children: [
  //                   pw.SizedBox(
  //                     width: 40,
  //                   ),
  //                   pw.Text("Subjects",
  //                       style: pw.TextStyle(
  //                           color: PdfColors.black,
  //                           fontWeight: pw.FontWeight.bold)),
  //                   pw.SizedBox(
  //                     width: 20,
  //                   ),
  //                   pw.Text("Total Marks",
  //                       style: pw.TextStyle(
  //                           color: PdfColors.black,
  //                           fontWeight: pw.FontWeight.bold)),
  //                   pw.SizedBox(
  //                     width: 20,
  //                   ),
  //                   pw.Text("Marks Obtained",
  //                       style: pw.TextStyle(
  //                           color: PdfColors.black,
  //                           fontWeight: pw.FontWeight.bold)),
  //                 ],
  //               ),
  //               pw.Divider(
  //                 color: PdfColors.black,
  //                 // indent: 115,
  //                 // endIndent: 115,
  //                 thickness: 1,
  //               ),
  //               pw.Row(
  //                 children: [
  //                   pw.SizedBox(
  //                     width: 40,
  //                   ),
  //                   pw.Column(
  //                     children: [
  //                       pw.Text("Mark1",
  //                           style: pw.TextStyle(
  //                               color: PdfColors.black,
  //                               fontWeight: pw.FontWeight.bold)),
  //                       pw.Text("Mark2",
  //                           style: pw.TextStyle(
  //                               color: PdfColors.black,
  //                               fontWeight: pw.FontWeight.bold)),
  //                       pw.Text("Mark3",
  //                           style: pw.TextStyle(
  //                               color: PdfColors.black,
  //                               fontWeight: pw.FontWeight.bold)),
  //                       pw.Text("Mark4",
  //                           style: pw.TextStyle(
  //                               color: PdfColors.black,
  //                               fontWeight: pw.FontWeight.bold)),
  //                       pw.Text("Mark5",
  //                           style: pw.TextStyle(
  //                               color: PdfColors.black,
  //                               fontWeight: pw.FontWeight.bold)),
  //                     ],
  //                   ),
  //                   pw.SizedBox(
  //                     width: 50,
  //                   ),
  //                   pw.Column(
  //                     children: [
  //                       pw.Text("100"),
  //                       pw.Text("100"),
  //                       pw.Text("100"),
  //                       pw.Text("100"),
  //                       pw.Text("100"),
  //                     ],
  //                   ),
  //                   pw.SizedBox(
  //                     width: 70,
  //                   ),
  //                   pw.Column(
  //                     children: [
  //                       pw.Text("${Global.mark1}"),
  //                       pw.Text("${Global.mark2}"),
  //                       pw.Text("${Global.mark3}"),
  //                       pw.Text("${Global.mark4}"),
  //                       pw.Text("${Global.mark5}"),
  //                     ],
  //                   )
  //                 ],
  //               ),
  //               pw.Divider(
  //                 color: PdfColors.black,
  //                 // indent: 115,
  //                 // endIndent: 115,
  //                 thickness: 1,
  //               ),
  //               pw.SizedBox(
  //                 height: 10,
  //               ),
  //               pw.Column(
  //                 mainAxisAlignment: pw.MainAxisAlignment.start,
  //                 children: [
  //                   pw.Row(
  //                     children: [
  //                       pw.SizedBox(
  //                         width: 10,
  //                       ),
  //                       pw.Text("Percentage",
  //                           style: pw.TextStyle(
  //                               color: PdfColors.black,
  //                               fontWeight: pw.FontWeight.bold)),
  //                       pw.SizedBox(
  //                         width: 39,
  //                       ),
  //                       pw.Text("${Global.average}%"),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //               pw.Divider(
  //                 color: PdfColors.black,
  //                 thickness: 1,
  //                 indent: 85,
  //                 endIndent: 256,
  //               ),
  //               pw.SizedBox(
  //                 height: 10,
  //               ),
  //               pw.Column(
  //                 mainAxisAlignment: pw.MainAxisAlignment.start,
  //                 children: [
  //                   pw.Row(
  //                     children: [
  //                       pw.SizedBox(
  //                         width: 10,
  //                       ),
  //                       pw.Text("Ovarall Grade",
  //                           style: pw.TextStyle(
  //                               color: PdfColors.black,
  //                               fontWeight: pw.FontWeight.bold)),
  //                       pw.SizedBox(
  //                         width: 39,
  //                       ),
  //                       pw.Text("${Global.grade}"),
  //                     ],
  //                   ),
  //                   pw.Divider(
  //                     color: PdfColors.black,
  //                     thickness: 1,
  //                     indent: 95,
  //                     endIndent: 216,
  //                   ),
  //                   pw.SizedBox(
  //                     height: 10,
  //                   ),
  //                   pw.Row(
  //                     children: [
  //                       pw.SizedBox(
  //                         width: 10,
  //                       ),
  //                       pw.Text("School Will Reopen on:"),
  //                       pw.SizedBox(
  //                         width: 10,
  //                       ),
  //                       pw.Text(
  //                         "12-6-2023",
  //                         style: pw.TextStyle(
  //                             color: PdfColors.black,
  //                             fontWeight: pw.FontWeight.bold),
  //                       ),
  //                     ],
  //                   ),
  //                   pw.SizedBox(
  //                     height: 19,
  //                   ),
  //                   pw.Row(
  //                     children: [
  //                       pw.SizedBox(
  //                         width: 10,
  //                       ),
  //                       pw.Text("Result"),
  //                       pw.SizedBox(
  //                         width: 10,
  //                       ),
  //                       pw.Text(
  //                         "Good",
  //                         style: pw.TextStyle(
  //                             color: PdfColors.black,
  //                             fontWeight: pw.FontWeight.bold),
  //                       ),
  //                     ],
  //                   ),
  //                   pw.Divider(
  //                     color: PdfColors.black,
  //                     thickness: 1,
  //                     indent: 50,
  //                     endIndent: 390,
  //                   ),
  //                   pw.SizedBox(
  //                     height: 20,
  //                   ),
  //                   pw.Container(
  //                     height: 200,
  //                     width: 180,
  //                     child: pw.Image(pw.MemoryImage(image)),
  //                   )
  //                 ],
  //               ),
  //             ],
  //           ),
  //         );
  //       }));
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PDF",
          style: TextStyle(fontSize: 26),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () async {
              Directory? dir = await getExternalStorageDirectory();

              File file = File("${dir!.path}/resume.pdf");

              print("Priyam");
              print(file);
              print("Baldha");

              await file.writeAsBytes(await pdf.save());
            },
            icon: const Icon(Icons.save_alt),
          ),
          IconButton(
            onPressed: () async {
              //   Uint8List bytes = await pdf.save();
              await Printing.layoutPdf(onLayout: (format) => generatePDF());
            },
            icon: Icon(Icons.print),
          )
        ],
      ),
      //backgroundColor: Colors.blue,
      body: Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Row(
              children: [
                Container(
                  height: 68,
                  width: 38,
                  child: Image.asset('assets/images/Education.jpg'),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Result of Final Exam",
                  style: TextStyle(fontSize: 26, color: Colors.teal),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  height: 60,
                  width: 38,
                  child: Image.asset('assets/images/Education.jpg'),
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "Class:",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text("${Global.Class}"),
                // Divider(
                //   color: Colors.black,
                //   indent: 5,
                //   endIndent: 5,
                //   thickness: 1,
                // ),
                const SizedBox(
                  width: 60,
                ),
                const Text("G.R.No.",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 5,
                ),
                Text("${Global.GRno}"),
                const SizedBox(
                  width: 35,
                ),
                const Text("Roll No.",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 5,
                ),
                Text("${Global.RollNo}"),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Text("Name:",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 5,
                ),
                Text("${Global.FullName}"),
                const SizedBox(
                  width: 35,
                ),
                const Text("A.Y.",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                const SizedBox(
                  width: 5,
                ),
                Text("${Global.AcademicYear}"),
              ],
            ),
            const Divider(
              color: Colors.black,
              // indent: 115,
              // endIndent: 115,
              thickness: 1,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 40,
                ),
                Text("Subjects",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 20,
                ),
                Text("Total Marks",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 20,
                ),
                Text("Marks Obtained",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            ),
            const Divider(
              color: Colors.black,
              // indent: 115,
              // endIndent: 115,
              thickness: 1,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Column(
                  children: const [
                    Text("Mark1",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text("Mark2",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text("Mark3",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text("Mark4",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    Text("Mark5",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  width: 50,
                ),
                Column(
                  children: const [
                    Text("100"),
                    Text("100"),
                    Text("100"),
                    Text("100"),
                    Text("100"),
                  ],
                ),
                const SizedBox(
                  width: 70,
                ),
                Column(
                  children: [
                    Text("${Global.mark1}"),
                    Text("${Global.mark2}"),
                    Text("${Global.mark3}"),
                    Text("${Global.mark4}"),
                    Text("${Global.mark5}"),
                  ],
                )
              ],
            ),
            const Divider(
              color: Colors.black,
              // indent: 115,
              // endIndent: 115,
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Percentage",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("${Global.average}%"),
                  ],
                ),
              ],
            ),
            const Divider(
              color: Colors.black,
              thickness: 1,
              indent: 85,
              endIndent: 216,
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Ovarall Grade",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                    const SizedBox(
                      width: 19,
                    ),
                    Text("${Global.grade}"),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 1,
                  indent: 95,
                  endIndent: 216,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Text("School Will Reopen on:"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "12-6-2023",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 19,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Text("Result"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Good",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.black,
                  thickness: 1,
                  indent: 50,
                  endIndent: 390,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: 150,
                  child: Image.asset('assets/images/thought.png'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<Uint8List> generatePDF() async {
    final image = (await rootBundle.load('assets/images/Education.jpg'))
        .buffer
        .asUint8List();

    final image2 = (await rootBundle.load('assets/images/thought.png'))
        .buffer
        .asUint8List();

    try {
      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (pw.Context context) {
            return pw.Container(
              margin: pw.EdgeInsets.only(top: 10),
              alignment: pw.Alignment.center,
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.center,
                children: [
                  pw.Row(children: [
                    pw.Container(
                      height: 68,
                      width: 50,
                      child: pw.Image(pw.MemoryImage(image)),
                    ),
                    pw.SizedBox(
                      width: 50,
                    ),
                    pw.Text(
                      "Result of Final Exam",
                      style: pw.TextStyle(fontSize: 26),
                    ),
                    pw.SizedBox(
                      width: 50,
                    ),
                    pw.Container(
                      height: 68,
                      width: 50,
                      child: pw.Image(pw.MemoryImage(image)),
                    ),
                  ]),
                  pw.Divider(
                    color: PdfColors.black,
                    // indent: 60,
                    // endIndent: 60,
                    thickness: 1,
                  ),
                  pw.Row(
                    children: [
                      pw.SizedBox(
                        width: 10,
                      ),
                      pw.Text(
                        "Class:",
                        style: pw.TextStyle(
                            color: PdfColors.black,
                            fontWeight: pw.FontWeight.bold),
                      ),
                      pw.SizedBox(
                        width: 5,
                      ),
                      pw.Text("${Global.Class}"),
                      // Divider(
                      //   color: Colors.black,
                      //   indent: 5,
                      //   endIndent: 5,
                      //   thickness: 1,
                      // ),
                      pw.SizedBox(
                        width: 60,
                      ),
                      pw.Text("G.R.No.",
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(
                        width: 5,
                      ),
                      pw.Text("${Global.GRno}"),
                      pw.SizedBox(
                        width: 35,
                      ),
                      pw.Text("Roll No.",
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(
                        width: 5,
                      ),
                      pw.Text("${Global.RollNo}"),
                    ],
                  ),
                  pw.SizedBox(
                    height: 5,
                  ),
                  pw.Row(
                    children: [
                      pw.SizedBox(
                        width: 10,
                      ),
                      pw.Text("Name:",
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(
                        width: 5,
                      ),
                      pw.Text("${Global.FullName}"),
                      pw.SizedBox(
                        width: 35,
                      ),
                      pw.Text("A.Y.",
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(
                        width: 5,
                      ),
                      pw.Text("${Global.AcademicYear}"),
                    ],
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                    // indent: 115,
                    // endIndent: 115,
                    thickness: 1,
                  ),
                  pw.Row(
                    children: [
                      pw.SizedBox(
                        width: 40,
                      ),
                      pw.Text("Subjects",
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(
                        width: 20,
                      ),
                      pw.Text("Total Marks",
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold)),
                      pw.SizedBox(
                        width: 20,
                      ),
                      pw.Text("Marks Obtained",
                          style: pw.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pw.FontWeight.bold)),
                    ],
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                    // indent: 115,
                    // endIndent: 115,
                    thickness: 1,
                  ),
                  pw.Row(
                    children: [
                      pw.SizedBox(
                        width: 40,
                      ),
                      pw.Column(
                        children: [
                          pw.Text("Mark1",
                              style: pw.TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold)),
                          pw.Text("Mark2",
                              style: pw.TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold)),
                          pw.Text("Mark3",
                              style: pw.TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold)),
                          pw.Text("Mark4",
                              style: pw.TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold)),
                          pw.Text("Mark5",
                              style: pw.TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold)),
                        ],
                      ),
                      pw.SizedBox(
                        width: 50,
                      ),
                      pw.Column(
                        children: [
                          pw.Text("100"),
                          pw.Text("100"),
                          pw.Text("100"),
                          pw.Text("100"),
                          pw.Text("100"),
                        ],
                      ),
                      pw.SizedBox(
                        width: 70,
                      ),
                      pw.Column(
                        children: [
                          pw.Text("${Global.mark1}"),
                          pw.Text("${Global.mark2}"),
                          pw.Text("${Global.mark3}"),
                          pw.Text("${Global.mark4}"),
                          pw.Text("${Global.mark5}"),
                        ],
                      )
                    ],
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                    // indent: 115,
                    // endIndent: 115,
                    thickness: 1,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Row(
                        children: [
                          pw.SizedBox(
                            width: 10,
                          ),
                          pw.Text("Percentage",
                              style: pw.TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold)),
                          pw.SizedBox(
                            width: 39,
                          ),
                          pw.Text("${Global.average}%"),
                        ],
                      ),
                    ],
                  ),
                  pw.Divider(
                    color: PdfColors.black,
                    thickness: 1,
                    indent: 85,
                    endIndent: 256,
                  ),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Row(
                        children: [
                          pw.SizedBox(
                            width: 10,
                          ),
                          pw.Text("Ovarall Grade",
                              style: pw.TextStyle(
                                  color: PdfColors.black,
                                  fontWeight: pw.FontWeight.bold)),
                          pw.SizedBox(
                            width: 39,
                          ),
                          pw.Text("${Global.grade}"),
                        ],
                      ),
                      pw.Divider(
                        color: PdfColors.black,
                        thickness: 1,
                        indent: 95,
                        endIndent: 216,
                      ),
                      pw.SizedBox(
                        height: 10,
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(
                            width: 10,
                          ),
                          pw.Text("School Will Reopen on:"),
                          pw.SizedBox(
                            width: 10,
                          ),
                          pw.Text(
                            "12-6-2023",
                            style: pw.TextStyle(
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.bold),
                          ),
                        ],
                      ),
                      pw.SizedBox(
                        height: 19,
                      ),
                      pw.Row(
                        children: [
                          pw.SizedBox(
                            width: 10,
                          ),
                          pw.Text("Result"),
                          pw.SizedBox(
                            width: 10,
                          ),
                          pw.Text(
                            "Good",
                            style: pw.TextStyle(
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.bold),
                          ),
                        ],
                      ),
                      pw.Divider(
                        color: PdfColors.black,
                        thickness: 1,
                        indent: 50,
                        endIndent: 390,
                      ),
                      pw.SizedBox(
                        height: 20,
                      ),
                      pw.Container(
                        height: 150,
                        width: 150,
                        child: pw.Image(pw.MemoryImage(image2)),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      );
    } catch (e) {
      print("Exception:$e");
    }
    return pdf.save();
  }
}
