import 'package:flutter/material.dart';

import 'package:scout/application/services/util/edge_insets_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Center(
        child: Padding(
          padding: EdgeInsetsService.horizontal(context, EdgeInsetSize.inset5),
          child: const Column(
            children: [
              Text('Zoom')
            ]
          ),
        ),
      ),
    );
  }
}
