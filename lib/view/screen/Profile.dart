import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resume_builder/view/screen/details.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Profile',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              letterSpacing: 1,
            )),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListTile(
                  leading: Image.asset('assets/img/profi.png'),
                  title: Text(
                    'User',
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff221851),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'profession',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Divider(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/detail');
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.person_outline,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Personal Details',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/education');
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.school_outlined,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Education',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/experience');
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.business_center_outlined,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Experience',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/skills');
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.verified_outlined,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Skills',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffe8e6f5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.language,
                                color: Color(0xff736d97),
                              ),
                            ),
                          ),
                          title: Text(
                            'Languages',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff221851),
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff8f88b6),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/certificate');
                          },
                          child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffe8e6f5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.workspace_premium,
                                  color: Color(0xff736d97),
                                ),
                              ),
                            ),
                            title: Text(
                              'Certificates',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff221851),
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff8f88b6),
                            ),
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(
                      //     vertical: 15,
                      //   ),
                      //   child: ListTile(
                      //     leading: Container(
                      //       decoration: BoxDecoration(
                      //           color: Color(0xffe8e6f5),
                      //           borderRadius: BorderRadius.circular(8)),
                      //       child: Padding(
                      //         padding: const EdgeInsets.all(8.0),
                      //         child: Icon(
                      //           Icons.accessibility,
                      //           color: Color(0xff736d97),
                      //         ),
                      //       ),
                      //     ),
                      //     title: Text(
                      //       'Reference',
                      //       style: TextStyle(
                      //           fontSize: 20,
                      //           color: Color(0xff221851),
                      //           letterSpacing: 1,
                      //           fontWeight: FontWeight.bold),
                      //     ),
                      //     trailing: Icon(
                      //       Icons.arrow_forward_ios,
                      //       color: Color(0xff8f88b6),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffe8e6f5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.sailing,
                                color: Color(0xff736d97),
                              ),
                            ),
                          ),
                          title: Text(
                            'Hobbies',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff221851),
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xff8f88b6),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 25, right: 20),
                            child: FloatingActionButton(
                              onPressed: () {
                                generatePdf();
                              },
                              child: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                              ),
                              backgroundColor: Colors.deepPurpleAccent,
                            ),
                          ),
                        ],
                      )
                    ],
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

Future<void> generatePdf() async {
  final pdf = pw.Document();
  pdf.addPage(pw.Page(
    pageFormat: PdfPageFormat.a4,
    build: (pw.Context context) {
      return pw.Center(
        child: pw.Row(children: [
          pw.SizedBox(
            width: 300,
            child: pw.Column(children: [
              pw.Row(children: [
                pw.Container(
                    height: 130,
                    width: 130,
                    decoration: pw.BoxDecoration(color: PdfColors.grey)),
                pw.Padding(
                    padding: pw.EdgeInsets.only(left: 20),
                    child: pw.Column(children: [
                      pw.Text(txtfirst_name.text,
                          style: pw.TextStyle(
                              color: PdfColors.amber,
                              fontSize: 30,
                              fontWeight: pw.FontWeight.bold)),
                      pw.Text(txtlast_name.text,
                          style: pw.TextStyle(
                              fontSize: 30, fontWeight: pw.FontWeight.bold)),
                    ])),
              ])
            ]),
          ),
        ]),
      );
    },
  ));
  await Printing.layoutPdf(
    onLayout: (format) => pdf.save(),
  );
}
