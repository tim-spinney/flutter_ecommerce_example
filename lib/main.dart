import 'package:ecommerce/model/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('assets/sample_data.json'),
      builder: (context, snapshot) {
        print('(re)building');
        print(snapshot.connectionState);
        if(snapshot.connectionState != ConnectionState.done) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        // TODO: handle error in case we fail to load data
        return ChangeNotifierProvider(
          create: (context) => ShoppingCart(),
          child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
              useMaterial3: true,
            ),
            home: const ProductListPage(),
          ),
        );
      },
    );

  }
}