import 'package:flutter/material.dart';

import 'splsh_view/presentaion/view/splsh_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplshScreen(),
    );
  }
}
