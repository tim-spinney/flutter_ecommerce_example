import 'product_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  /*runApp(
    const Directionality(
      textDirection: TextDirection.ltr,
      child: Text('Hello!'),
    )
  );*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const ProductDetailPage(),
    );
  }
}