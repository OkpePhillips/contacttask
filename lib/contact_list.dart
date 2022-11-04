// ignore_for_file: prefer_const_constructors, must_be_immutable;
import 'models/contact.dart';
import 'package:flutter/material.dart';


class ContactList extends StatelessWidget {
  Contact contact;
  ContactList(this.contact, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: const Text('My Contact'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _displayContacts(contact)));
  }

  List<Widget> _displayContacts(Contact contact) {
    var result = <Widget>[];

    for (int i = 0; i < contact.contacts!.length; i++) {
      result.add(_sectionTitle(contact.contacts![i]));
    }
    return result;
  }

  Widget _sectionTitle(text) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.fromLTRB(5, 10, 10, 0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage(text.image.toString()),
            radius: 25.0,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(text.name.toString(),
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 1.0,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: [
            Text('Phone-Number: ',
                style: TextStyle(
                    letterSpacing: 2.0,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              width: 10.0,
            ),
            Text(text.phoneNumber.toString(),
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold))
          ],
        ),
        SizedBox(
          height: 2.0,
        ),
      ]),
    ));
  }
}
