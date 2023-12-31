import 'package:flutter/material.dart';
import 'package:seko_haberler/views/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seko Haberler',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:
            Colors.white, // Burada primaryColor'ı beyaz olarak ayarlıyoruz
      ),
      home: const HomePage(),
    );
  }
}
