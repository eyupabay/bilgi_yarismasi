import 'package:flutter/material.dart';

TextField girisTextField({
  required TextEditingController eklenecekVeri,
  required InputDecoration dekorasyon,
  required bool isAutoFocus,
  required TextInputAction ilerleme,
}) {
  return TextField(
    textInputAction: ilerleme,
    controller: eklenecekVeri,
    autofocus: isAutoFocus,
    keyboardType: TextInputType.text,
    decoration: dekorasyon,
  );
}

InputDecoration kullaniciAdiDekorasyonu() {
  return const InputDecoration(
    icon: Icon(
      Icons.person,
      color: Colors.black,
    ),
    hintText: "Kullanıcı Adı",
  );
}

InputDecoration eMailDekorasyonu() {
  return const InputDecoration(
    icon: Icon(
      Icons.mail,
      color: Colors.black,
    ),
    hintText: "E-Mail",
  );
}

Image logoAssets({required String resim}) {
  return Image.asset(
    "assets/images/$resim",
    height: 250,
  );
}