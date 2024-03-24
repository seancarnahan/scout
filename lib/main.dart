import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:scout/application/services/util/environment_service.dart';
import 'package:scout/application/services/zoom_service.dart';
import 'package:scout/infrastructure/api/zoom_api.dart';
import 'package:scout/presentation/screens/home/home_screen.dart';
import 'package:scout/presentation/themes/scout_theme.dart';


void main() {
  runApp(
    // Dependency Injection for these Services
    MultiProvider(
      providers: [
        // Zoom Service
        Provider(create: (_) => ZoomApi()),
        ProxyProvider<ZoomApi, ZoomService>(
          update: (_, api, __) => ZoomService(api),
        ),
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scout',
      debugShowCheckedModeBanner: false,
      theme: buildScoutTheme(),
      home: FutureBuilder(
        future: EnvironmentService().loadEnv(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshots) {
          if (snapshots.connectionState == ConnectionState.done) {
            return const HomeScreen();
          } else if (snapshots.hasError) {
            return const Text('Error loading env vars');
          } else {
            return const Scaffold(
              body: Center(
                child: Text('LOADING...'),
              ),
            );
          }
        }
      ),
    );
  }
}
