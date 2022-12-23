import 'package:bilgi_yarismasi/models/dekorasyonlar.dart';
import 'package:bilgi_yarismasi/views/ana_menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GirisEkrani extends StatefulWidget {
  const GirisEkrani({Key? key}) : super(key: key);

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  TextEditingController kullaniciAdi = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                logoAssets(
                  resim: "belediye_logo.png",
                ),
                const Text(
                  "BİLGİ YARIŞMASI",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                girisTextField(
                    eklenecekVeri: kullaniciAdi,
                    ilerleme: TextInputAction.next,
                    isAutoFocus: true,
                    dekorasyon: kullaniciAdiDekorasyonu()),
                girisTextField(
                    eklenecekVeri: email,
                    ilerleme: TextInputAction.done,
                    isAutoFocus: false,
                    dekorasyon: eMailDekorasyonu()),
                CupertinoButton(
                    child: const Text("Giriş yap"),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const AnaMenu()));
                      /* 
                      FirebaseFirestore.instance
                          .collection("Yarismacilar")
                          .doc(email.text)
                          .set({
                        "email": email.text,
                        "kullaniciAdi": kullaniciAdi.text
                      }).whenComplete(() => print(
                              "Giren yarışmacı $kullaniciAdi veritabanına kaydedildi."));
                     */
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
