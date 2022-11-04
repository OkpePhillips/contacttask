import '../models/contact.dart';

class MockContact extends Contact {
  static fetchAll() {
    return Contact(contacts: <ContactDetail>[
      ContactDetail(
          name: "Goddy",
          image: "assets/boy.png",
          phoneNumber: "08122694518"),
      ContactDetail(
          name: "Mumsy",
          image: "assets/queen.png",
          phoneNumber: "08122694518"),
      ContactDetail(
          name: "Pman",
          image: "assets/king.png",
          phoneNumber: "08122694518"),
      ContactDetail(
          name: "Baby",
          image: "assets/baby.png",
          phoneNumber: "08143016263"),
    ]);
  }
}
