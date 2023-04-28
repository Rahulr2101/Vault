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
  final DateController = TextEditingController();
  final sexController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final CountryController = TextEditingController();
  final stateController = TextEditingController();
  final HouseController = TextEditingController();
  final StreetController = TextEditingController();
  final locaController = TextEditingController();
  final townController = TextEditingController();
  final districtController = TextEditingController();
  final pinController = TextEditingController();
  final buildbuController = TextEditingController();
  final streetbuController = TextEditingController();
  final locabuController = TextEditingController();
  final districtbuController = TextEditingController();
  final statebuController = TextEditingController();
  final CountrybuController = TextEditingController();
  final pinbuController = TextEditingController();
  final officebuController = TextEditingController();
  final houseperController = TextEditingController();
  final streetperController = TextEditingController();
  final locaperController = TextEditingController();
  final townperController = TextEditingController();
  final districtperController = TextEditingController();
  final stateperController = TextEditingController();
  final countryperController = TextEditingController();
  final pinerController = TextEditingController();
  final aadharController = TextEditingController();
  final panController = TextEditingController();
  final voterController = TextEditingController();
  final drivingController = TextEditingController();
  final digilockerController = TextEditingController();
  final passportController = TextEditingController();
  final schoolboardController = TextEditingController();
  final rollController = TextEditingController();
  final schoolcodeController = TextEditingController();
  final schoolController = TextEditingController();
  final schooladdController = TextEditingController();
  final scoreController = TextEditingController();
  final bloodController = TextEditingController();
  final heightController = TextEditingController();
  final weightController = TextEditingController();
  final conditionController = TextEditingController();
  final bmiController = TextEditingController();
  final allgController = TextEditingController();
  final banknameController = TextEditingController();
  final branchController = TextEditingController();
  final accController = TextEditingController();
  final ifscController = TextEditingController();

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
              controller: DateController,
              decoration: InputDecoration(
                  hintText: 'Date of Birth',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: sexController,
              decoration: InputDecoration(
                  hintText: 'Sex',
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
              controller: phoneController,
              decoration: InputDecoration(
                  hintText: 'Phone No',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                  hintText: 'E-mail ID',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: CountryController,
              decoration: InputDecoration(
                  hintText: 'Country',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: stateController,
              decoration: InputDecoration(
                  hintText: 'State',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        // =====================
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: HouseController,
              decoration: InputDecoration(
                  hintText: 'House/Apartment No',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: StreetController,
              decoration: InputDecoration(
                  hintText: 'Street Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: locaController,
              decoration: InputDecoration(
                  hintText: 'Locality',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: townController,
              decoration: InputDecoration(
                  hintText: 'Town/City',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: districtController,
              decoration: InputDecoration(
                  hintText: 'District',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),

        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: pinController,
              decoration: InputDecoration(
                  hintText: 'Pincode',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        // ==============================
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: buildbuController,
              decoration: InputDecoration(
                  hintText: 'Building No',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: streetbuController,
              decoration: InputDecoration(
                  hintText: 'Street Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: locabuController,
              decoration: InputDecoration(
                  hintText: 'Locality',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: districtbuController,
              decoration: InputDecoration(
                  hintText: 'District',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: statebuController,
              decoration: InputDecoration(
                  hintText: 'State',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: CountrybuController,
              decoration: InputDecoration(
                  hintText: 'Country',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: pinbuController,
              decoration: InputDecoration(
                  hintText: 'Pincode',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: officebuController,
              decoration: InputDecoration(
                  hintText: 'Office Telephone No.',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        // ======================
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: houseperController,
              decoration: InputDecoration(
                  hintText: 'House/Apartment No',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: streetperController,
              decoration: InputDecoration(
                  hintText: 'Street Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: locaperController,
              decoration: InputDecoration(
                  hintText: 'Locality',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: townperController,
              decoration: InputDecoration(
                  hintText: 'Town/City',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: districtperController,
              decoration: InputDecoration(
                  hintText: 'District',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: stateperController,
              decoration: InputDecoration(
                  hintText: 'State',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: countryperController,
              decoration: InputDecoration(
                  hintText: 'Country',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: pinerController,
              decoration: InputDecoration(
                  hintText: 'Pincode',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        // ================
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: aadharController,
              decoration: InputDecoration(
                  hintText: 'Addhar No',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: panController,
              decoration: InputDecoration(
                  hintText: 'Pan Card No',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: voterController,
              decoration: InputDecoration(
                  hintText: 'Voter ID',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: drivingController,
              decoration: InputDecoration(
                  hintText: 'Driving Licence No',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: digilockerController,
              decoration: InputDecoration(
                  hintText: 'Digilocker ID',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: passportController,
              decoration: InputDecoration(
                  hintText: 'Passport ID',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        // ==================
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: schoolboardController,
              decoration: InputDecoration(
                  hintText: 'School Board',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: rollController,
              decoration: InputDecoration(
                  hintText: 'Roll No',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: schoolcodeController,
              decoration: InputDecoration(
                  hintText: 'School Code',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: schoolController,
              decoration: InputDecoration(
                  hintText: 'School Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: schooladdController,
              decoration: InputDecoration(
                  hintText: 'School Address',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: scoreController,
              decoration: InputDecoration(
                  hintText: 'Score(%)',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        // =============================
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: bloodController,
              decoration: InputDecoration(
                  hintText: 'Blood Type',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: heightController,
              decoration: InputDecoration(
                  hintText: 'Height',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: weightController,
              decoration: InputDecoration(
                  hintText: 'Weight',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: conditionController,
              decoration: InputDecoration(
                  hintText: 'Medical Condition',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: bmiController,
              decoration: InputDecoration(
                  hintText: 'BMI',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: allgController,
              decoration: InputDecoration(
                  hintText: 'Allergies',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        // ============================
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: banknameController,
              decoration: InputDecoration(
                  hintText: 'Bank Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: branchController,
              decoration: InputDecoration(
                  hintText: 'Branch Code',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: accController,
              decoration: InputDecoration(
                  hintText: 'Account No',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40))),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
          child: Column(children: [
            TextField(
              controller: ifscController,
              decoration: InputDecoration(
                  hintText: 'IFSC Code',
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
      'Date_of_birth': DateController.text.trim(),
      'sex': sexController.text.trim(),
      'phone': int.parse(phoneController.text.trim()),
      'Country': CountryController.text.trim(),
      'State': stateController.text.trim(),
      'House_No': stateController.text.trim(),
      'Street_cur': StreetController.text.trim(),
      'locality_cur': locaController.text.trim(),
      'town_cur': townController.text.trim(),
      'district_cur': districtController.text.trim(),
      'pin_cur': pinController.text.trim(),
      'building_bu': buildbuController.text.trim(),
      'Street_bu': streetbuController.text.trim(),
      'locality_bu': locabuController.text.trim(),
      'district_bu': districtbuController.text.trim(),
      'State_bu': statebuController.text.trim(),
      'Country_bu': CountrybuController.text.trim(),
      'Pin_bu': CountryController.text.trim(),
      'office_phone': officebuController.text.trim(),
      'house_per': houseperController.text.trim(),
      'Street_per': streetbuController.text.trim(),
      'locality_per': locaperController.text.trim(),
      'town_per': townController.text.trim(),
      'district_per': districtperController.text.trim(),
      'state_per': stateperController.text.trim(),
      'Country_per': countryperController.text.trim(),
      'pin_per': pinerController.text.trim(),
      'aadhar_number': aadharController.text.trim(),
      'pan_number': panController.text.trim(),
      'voter': voterController.text.trim(),
      'driving': drivingController.text.trim(),
      'digilocker': digilockerController.text.trim(),
      'passport': passportController.text.trim(),
      'school_board': schoolController.text.trim(),
      'school_roll': rollController.text.trim(),
      'school_code': schoolcodeController.text.trim(),
      'school_name': schoolController.text.trim(),
      'school_address': schooladdController.text.trim(),
      'score': scoreController.text.trim(),
      'blood': bloodController.text.trim(),
      'height': heightController.text.trim(),
      'Weight': weightController.text.trim(),
      'medical_conditions': conditionController.text.trim(),
      'bmi': bmiController.text.trim(),
      'allergies': allgController.text.trim(),
      'bank_name': banknameController.text.trim(),
      'branch': branchController.text.trim(),
      'account_number': accController.text.trim(),
      'ifsc_code': ifscController.text.trim(),
    });
  }
}
