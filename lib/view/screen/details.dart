import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

TextEditingController txtfirst_name = TextEditingController(text: 'Jaydeep');
TextEditingController txtlast_name = TextEditingController(text: 'Sharma');
TextEditingController txtEmail = TextEditingController(text: 'sharmajaydeep1515@gmail.com');
TextEditingController txtProfession = TextEditingController(text: 'Flutter Developer');
TextEditingController txtNumber = TextEditingController(text: '9079772485');
TextEditingController txtCountry = TextEditingController(text: 'India');
TextEditingController txtCity = TextEditingController(text: 'Surat');
TextEditingController txtAddress = TextEditingController(text: 'Suncity,Dindoli,Surat,Gujrat');
TextEditingController txtPortfolio = TextEditingController(text: 'https://github.com/Jaydeepsharma');

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(
          'Personal Details',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.deepPurpleAccent, width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: CircleAvatar(
                            maxRadius: 80,
                            backgroundImage: (imagepath) != null
                                ? FileImage(imagepath!)
                                : null,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 150,
                    left: 250,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          shape: BoxShape.circle),
                      child: IconButton(
                          onPressed: () {
                            setImage();
                          },
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name',
                    style: TextStyle(
                        fontSize: 18,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    textInputAction: TextInputAction.next,
                    controller: txtfirst_name,
                    decoration: InputDecoration(
                        hintText: 'First Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  )
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Name',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtlast_name,
                      decoration: InputDecoration(
                          hintText: 'Last Name',
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
                      'Email address',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtEmail,
                      decoration: InputDecoration(
                          hintText: 'Email',
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
                      'Profession',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtProfession,
                      decoration: InputDecoration(
                          hintText: 'Profession',
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
                      'Phone Number',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtNumber,
                      decoration: InputDecoration(
                          hintText: '09XX-XXX-XXX',
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
                      'Country',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtCountry,
                      decoration: InputDecoration(
                          hintText: 'Country',
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
                      'City',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtCity,
                      decoration: InputDecoration(
                          hintText: 'City',
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
                      'Address',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.next,
                      controller: txtAddress,
                      decoration: InputDecoration(
                          hintText: 'Address',
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
                      'Portfilio',
                      style: TextStyle(
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      textInputAction: TextInputAction.done,
                      controller: txtPortfolio,
                      decoration: InputDecoration(
                          hintText: 'Social(Linkedin,Facebook,Twitter)',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    )
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
              SizedBox(height: 60)
            ],
          ),
        ),
      ),
    );
  }

  void setImage() async {
    XFile? images = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imagepath = File(images!.path);
    });
  }
}

ImagePicker picker = ImagePicker();
File? imagepath;
