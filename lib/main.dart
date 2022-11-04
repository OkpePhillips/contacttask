// ignore_for_file: prefer_const_constructor
import 'contact_list.dart';
import 'mock/contact_mock.dart';
import 'models/contact.dart';
import 'package:flutter/material.dart';

void main() {
  Contact mockContact = MockContact.fetchAll();
  return runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'RobotoMono'),
    home: ContactList(mockContact),
  ));
}
