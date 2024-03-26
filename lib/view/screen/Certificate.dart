import 'package:flutter/material.dart' show AppBar, BorderRadius, BoxDecoration, BuildContext, Center, Colors, Column, Container, CrossAxisAlignment, EdgeInsets, FontWeight, Icon, IconThemeData, Icons, InputDecoration, OutlineInputBorder, Padding, Scaffold, SingleChildScrollView, SizedBox, State, StatefulWidget, Text, TextEditingController, TextField, TextInputAction, TextStyle, Widget;

class Certificate extends StatefulWidget {
  const Certificate({super.key});

  @override
  State<Certificate> createState() => _CertificateState();
}
TextEditingController txtCertificate = TextEditingController(text: 'Flutter Developer');
TextEditingController txtInstitute = TextEditingController(text: '');
TextEditingController txtCertificate_description = TextEditingController();
TextEditingController txt_start = TextEditingController();
TextEditingController txt_end = TextEditingController();
class _CertificateState extends State<Certificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Certificate',
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
                      'Certificate Name',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtCertificate,
                      decoration: InputDecoration(
                          hintText: 'Certificate Name',
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
                      'Institute Name',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtInstitute,
                      decoration: InputDecoration(
                          hintText: 'Institute Name',
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
                      'Certificate Description',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      maxLines: 5,
                      textInputAction: TextInputAction.next,
                      controller: txtCertificate_description,
                      decoration: InputDecoration(
                          hintText: 'Description',
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
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txt_start,
                      decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.date_range_outlined,
                            color: Colors.deepPurpleAccent,
                          ),
                          hintText: 'Start Date',
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
                          color: Colors.black,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.done,
                      controller: txt_end,
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