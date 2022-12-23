import 'package:bilgi_yarismasi/models/dekorasyonlar.dart';
import 'package:bilgi_yarismasi/views/giris_ekrani.dart';
import 'package:flutter/material.dart';

class AnaMenu extends StatefulWidget {
  const AnaMenu({super.key});

  @override
  State<AnaMenu> createState() => _AnaMenuState();
}

class _AnaMenuState extends State<AnaMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: menuAppBar(menuYazisi: "Ana Menü", sagClick: [
      // Buraya basıldığında kullanıcı uygulamadan çıkış yapacak.
      IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const GirisEkrani()));
          },
          icon: const Icon(Icons.exit_to_app))
    ]));
  }
}
