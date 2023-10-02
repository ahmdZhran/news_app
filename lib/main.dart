import 'package:flutter/material.dart';

import 'features/splsh_view/presentaion/view/splsh_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: ,
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
    );
  }
}
