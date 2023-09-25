import 'package:flutter/material.dart';

import 'modals/globals.dart';

class StudentMarks extends StatefulWidget {
  const StudentMarks({Key? key}) : super(key: key);

  @override
  State<StudentMarks> createState() => _StudentMarksState();
}

class _StudentMarksState extends State<StudentMarks> {
  final GlobalKey<FormState> markPageScreen = GlobalKey<FormState>();

  final _marks1 = TextEditingController();
  final _marks2 = TextEditingController();
  final _marks3 = TextEditingController();
  final _marks4 = TextEditingController();
  final _marks5 = TextEditingController();

  final _tot = TextEditingController();

  final _avg = TextEditingController();
  final _grade = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int result;
    double average;

    int sum;

    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "👨 Student Mark 🧑‍",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: [
            IconButton(
                onPressed: () {
                  // if (markPageScreen.currentState!.validate()) {
                  //   markPageScreen.currentState!.save();
                    Navigator.of(context).pushNamed('PDFpage');
                  },
                // },
                icon: const Icon(Icons.picture_as_pdf))
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Form(
                key: markPageScreen,
                child: Column(
                  children: [
                    const Text("Student Marks Calcuation",
                        style: TextStyle(fontSize: 30, color: Colors.red)),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        Global.mark1 = val.toString();
                      },
                      controller: _marks1,
                      decoration: InputDecoration(
                          labelText: "Marks 1",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        Global.mark2 = val.toString();
                      },
                      controller: _marks2,
                      decoration: InputDecoration(
                          labelText: "Marks 2",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        Global.mark3 = val.toString();
                      },
                      controller: _marks3,
                      decoration: InputDecoration(
                          labelText: "Marks 3",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        Global.mark4 = val.toString();
                      },
                      controller: _marks4,
                      decoration: InputDecoration(
                          labelText: "Marks 4",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "";
                        }
                        return null;
                      },
                      onSaved: (val) {
                        Global.mark5 = val.toString();
                      },
                      controller: _marks5,
                      decoration: InputDecoration(
                          labelText: "Marks 5",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _tot,
                      decoration: InputDecoration(
                          labelText: "Total",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: _avg,
                      decoration: InputDecoration(
                          labelText: "Avg",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: _grade,
                      decoration: InputDecoration(
                          labelText: "Grade",
                          labelStyle: TextStyle(
                              fontSize: 15, color: Colors.grey.shade400),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          sum = int.parse(_marks1.text) +
                              int.parse(_marks2.text) +
                              int.parse(_marks3.text) +
                              int.parse(_marks4.text) +
                              int.parse(_marks5.text);
                          result = sum;
                          _tot.text = result.toString();
                          Global.result = sum.toString();

                          average = result / 5;
                          _avg.text = average.toString();
                          Global.average = average.toString();

                          if (average >= 81 && average <= 100) {
                            _grade.text = "A+";
                            Global.grade = "A+";
                          } else if (average >= 80 && average <= 81) {
                            _grade.text = "A";
                            Global.grade = "A";
                          } else if (average >= 70 && average <= 71) {
                            _grade.text = "B+";
                            Global.grade = "B+";
                          } else if (average >= 60 && average <= 61) {
                            _grade.text = "B";
                            Global.grade = "B";
                          } else if (average >= 50 && average <= 51) {
                            _grade.text = "C";
                            Global.grade = "C";
                          } else {
                            _grade.text = "D";
                            Global.grade = "D";
                          }
                        },
                        child: const Text("ADD"))
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
