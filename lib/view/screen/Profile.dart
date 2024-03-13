import 'package:flutter/material.dart';

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
                                Icons.accessibility,
                                color: Color(0xff736d97),
                              ),
                            ),
                          ),
                          title: Text(
                            'Reference',
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
