import 'package:bilgi_yarismasi/views/giris_ekrani.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class initFirebase extends StatefulWidget {
  const initFirebase({super.key});

  @override
  State<initFirebase> createState() => _initFirebaseState();
}

class _initFirebaseState extends State<initFirebase> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const GirisEkrani();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
