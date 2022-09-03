// import 'dart:js';

// import 'package:beepay/screens/HomePage.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// TextEditingController cel = TextEditingController();
// TextEditingController password = TextEditingController();

// Future RegistrationUser() async {
//   var APIURL = "https://admin.justbeesolutions.com/beeadmin/api/login";
//   Map mapdate = {
//     'cel': cel.text,
//     'password': password.text,
//   };
//   print("JSON DATA: ${mapdate}");
//   http.Response response = await http.post(Uri.parse(APIURL), body: mapdate);
//   var data = jsonDecode(response.body);
//   print("DATA: ${data}");
//   Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
// }