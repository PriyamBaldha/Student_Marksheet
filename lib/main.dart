import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_marksheet/pdf_page.dart';
import 'package:student_marksheet/studentmarks.dart';
import 'Splash_screen.dart';
import 'StudentEducationInformation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (value) => runApp(
      MaterialApp(
        // title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: 'Splash_Screen',
        routes: {
          // 'Marks': (context) => const Marks(),
          'StudentMarks': (context) => const StudentMarks(),
          'Splash_Screen': (context) => const Splash_Screen(),
          'Education': (context) => const Education(),
          'PDFpage': (context) => const PDFpage(),
        },
      ),
    ),
  );
}
