import 'package:flutter/material.dart';

import 'widgets/interstes_view_body.dart';

class InterstesView extends StatelessWidget {
  const InterstesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.amber,
      body: IntersetsViewBody(),
    );
  }
}
