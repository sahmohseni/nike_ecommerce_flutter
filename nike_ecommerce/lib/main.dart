import 'package:flutter/material.dart';
import 'package:kiwi/kiwi.dart';
import 'package:nike_ecommerce/src/data/di/api_module.dart';
import 'package:nike_ecommerce/src/data/di/network_module.dart';
import 'package:nike_ecommerce/src/domain/di/repo_module.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository.dart';
import 'package:nike_ecommerce/src/domain/repository/product/product_repository_imp.dart';
import 'package:nike_ecommerce/src/presentation/ui/home/home.dart';

void main() {
  apiInjector();
  repoInjector();
  networkInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyText2: TextStyle(fontFamily: 'dana'),
              caption: TextStyle(fontFamily: 'dana', color: Colors.grey),
              headline6: TextStyle(fontFamily: 'dana'))),
      debugShowCheckedModeBanner: false,
      home:
          Directionality(textDirection: TextDirection.rtl, child: HomeScreen()),
    );
  }
}
