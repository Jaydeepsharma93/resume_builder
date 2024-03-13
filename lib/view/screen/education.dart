import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

TextEditingController txtStudy = TextEditingController();
TextEditingController txtInstitute = TextEditingController();
TextEditingController txtGrade = TextEditingController();
TextEditingController txtStart_date = TextEditingController();
TextEditingController txtEnd_date = TextEditingController();

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Education',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Study Program / Degree Title',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtStudy,
                      decoration: InputDecoration(
                          hintText: 'Bachelor of .......',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Instiute / place of\nEducation',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtInstitute,
                      decoration: InputDecoration(
                          hintText: 'Instiute Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Grade / CGPA',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtGrade,
                      decoration: InputDecoration(
                          hintText: 'A/3.22',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Start Date',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtStart_date,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.date_range_outlined,
                            color: Colors.deepPurpleAccent,
                          ),
                          hintText: 'Staet Date',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'End Date',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.done,
                      controller: txtEnd_date,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.date_range_outlined,
                            color: Colors.deepPurpleAccent,
                          ),
                          hintText: 'End Date',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 10),
                    child: Text(
                      'save',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
