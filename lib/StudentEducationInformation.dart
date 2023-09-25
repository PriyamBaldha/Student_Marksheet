import 'package:flutter/material.dart';
import 'modals/globals.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final GlobalKey<FormState> FullNameKey = GlobalKey<FormState>();
  final TextEditingController FullNameController = TextEditingController();

  final GlobalKey<FormState> RollNoKey = GlobalKey<FormState>();
  final TextEditingController RollNoController = TextEditingController();

  final GlobalKey<FormState> GRnoKey = GlobalKey<FormState>();
  final TextEditingController GRnoController = TextEditingController();

  final GlobalKey<FormState> ClassKey = GlobalKey<FormState>();
  final TextEditingController ClassController = TextEditingController();

  final GlobalKey<FormState> AcademicYearKey = GlobalKey<FormState>();
  final TextEditingController AcademicYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.only(top: 50),
                width: _width,
                height: _height,
                alignment: Alignment.center,
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('ResumeWorkSpace');
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 67,
                    ),
                    const Text(
                      "Education Information",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              )),
          Expanded(
            flex: 12,
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(20),
                        height: _height * 0.833,
                        width: _width,
                        color: Colors.white,
                        child: Container(
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(top: 10, left: 21),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Full Name:",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 2,
                                    right: 20,
                                    top: 5,
                                    bottom: 10,
                                  ),
                                  height: 50,
                                  width: _width,
                                  decoration: BoxDecoration(
                                    //   color: Colors.amber,
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  child: Form(
                                    key: FullNameKey,
                                    child: TextFormField(
                                      controller: FullNameController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Full Name first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.FullName = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        // label: Text(
                                        //   "    B.Tech Information Technology",
                                        //   style: TextStyle(color: Colors.grey),
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "Roll No:",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 2,
                                    right: 20,
                                    top: 5,
                                    bottom: 10,
                                  ),
                                  height: 50,
                                  width: _width,
                                  decoration: BoxDecoration(
                                    //   color: Colors.amber,
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  child: Form(
                                    key: RollNoKey,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: RollNoController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your RollNo first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.RollNo = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        // label: Text(
                                        //   "    Bhagavan Mahavir University",
                                        //   style: TextStyle(color: Colors.grey),
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "GR No:",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 2,
                                    right: 20,
                                    top: 5,
                                    bottom: 10,
                                  ),
                                  height: 50,
                                  width: _width,
                                  decoration: BoxDecoration(
                                    //   color: Colors.amber,
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  child: Form(
                                    key: GRnoKey,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: GRnoController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your GR No first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.GRno = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        // label: Text(
                                        //   "    70% (or) 7.0 CGPA",
                                        //   style: TextStyle(color: Colors.grey),
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "class:",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 2,
                                    right: 20,
                                    top: 5,
                                    bottom: 10,
                                  ),
                                  height: 50,
                                  width: _width,
                                  decoration: BoxDecoration(
                                    //   color: Colors.amber,
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  child: Form(
                                    key: ClassKey,
                                    child: TextFormField(
                                      //keyboardType: TextInputType.number,
                                      controller: ClassController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your Class first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.Class = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        // label: Text(
                                        //   "    2019",
                                        //   style: TextStyle(color: Colors.grey),
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "Acadmenic Year:",
                                  style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(
                                    left: 2,
                                    right: 20,
                                    top: 5,
                                    bottom: 10,
                                  ),
                                  height: 50,
                                  width: _width,
                                  decoration: BoxDecoration(
                                    //   color: Colors.amber,
                                    border: Border.all(
                                        color: Colors.grey.withOpacity(0.5)),
                                  ),
                                  child: Form(
                                    key: AcademicYearKey,
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: AcademicYearController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return "Please Enter your AcademicYear first";
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          Global.AcademicYear = val;
                                        });
                                      },
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        // label: Text(
                                        //   "    2019",
                                        //   style: TextStyle(color: Colors.grey),
                                        // ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                const SizedBox(
                                  height: 10,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        ElevatedButton(
                                          child: const Text(
                                            "Save",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                          onPressed: () {
                                            if (FullNameKey.currentState!
                                                .validate()) {
                                              FullNameKey.currentState!.save();

                                              if (RollNoKey.currentState!
                                                  .validate()) {
                                                RollNoKey.currentState!.save();
                                              }

                                              if (GRnoKey.currentState!
                                                  .validate()) {
                                                GRnoKey.currentState!.save();
                                              }

                                              if (ClassKey.currentState!
                                                  .validate()) {
                                                ClassKey.currentState!.save();
                                              }

                                              if (AcademicYearKey.currentState!
                                                  .validate()) {
                                                AcademicYearKey.currentState!
                                                    .save();
                                              }

                                              print(
                                                  "Full Name: ${Global.FullName}");
                                              print(
                                                  "Roll No: ${Global.RollNo}");
                                              print("GR No: ${Global.GRno}");
                                              print("Class: ${Global.Class}");
                                              print(
                                                  "Acdemic Year: ${Global.AcademicYear}");
                                            }
                                          },
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              FullNameKey.currentState!
                                                  .validate();
                                              RollNoKey.currentState!.reset();
                                              GRnoKey.currentState!.validate();
                                              ClassKey.currentState!.reset();
                                              AcademicYearKey.currentState!
                                                  .reset();

                                              FullNameController.clear();
                                              RollNoController.clear();
                                              GRnoController.clear();
                                              ClassController.clear();
                                              AcademicYearController.clear();

                                              setState(() {
                                                Global.FullName = "";
                                                Global.RollNo = "";
                                                Global.GRno = "";
                                                Global.Class = "";
                                                Global.AcademicYear = "";
                                              });
                                            },
                                            child: const Text(
                                              "Clear",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            )),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('StudentMarks');
                                      },
                                      child: const Text(
                                        "Add Your MarkSheet Detail",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            )))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
