import 'package:flutter/material.dart';

import 'widgets/interests_view_body.dart';

class InterstesView extends StatelessWidget {
  const InterstesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfffBE4E1),
      body: IntersetsViewBody(),
    );
  }
}
