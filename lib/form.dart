import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:basic_utils/basic_utils.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  final aadharController = TextEditingController();
  final bloodGroupController = TextEditingController();
  final addressController = TextEditingController();
  final fatherController = TextEditingController();
  final motherController = TextEditingController();
  final phoneController = TextEditingController();
  final firestoreInstance = FirebaseFirestore.instance;
  String dropdownvalue = 'Blood Group';

  var items = ['Blood Group', 'A+', 'B+', 'AB+', 'O+', 'A-', 'B-', 'AB-', 'O-'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                  hintText: 'Age',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: aadharController,
              decoration: InputDecoration(
                  hintText: 'Aadhar Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            DropdownButton(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(value: items, child: Text(items));
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'Email id',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  hintText: 'Phone Number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: aadharController,
              decoration: InputDecoration(
                  hintText: 'Address',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: fatherController,
              decoration: InputDecoration(
                  hintText: 'Father Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: motherController,
              decoration: InputDecoration(
                  hintText: 'Mother Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        ElevatedButton(
            onPressed: signIn,
            child: Text(
              'Done',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ))
      ]),
    )));
  }

  Future<void> signIn() async {
    await firestoreInstance.collection("Userdata").doc("user1").set({
      'name': nameController.text.trim(),
      'email': emailController.text.trim(),
      'age': int.parse(ageController.text.trim()),
      'aadhar': int.parse(aadharController.text.trim()),
      'blood_group': bloodGroupController.text.trim(),
      'phone': phoneController.text.trim(),
      'address': addressController.text.trim(),
      'father': fatherController.text.trim(),
      'mother': motherController.text.trim(),
    });
  }
}
