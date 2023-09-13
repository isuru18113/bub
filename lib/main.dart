import 'package:bub/routes/routes.dart';
import 'package:bub/theme/color_schemes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const BubApp());
}

class BubApp extends StatefulWidget {
  const BubApp({super.key});


  @override
  State<BubApp> createState() => _BubAppState();
}

class _BubAppState extends State<BubApp> {

  final GoRouter router = Routes.buildRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(

        debugShowCheckedModeBanner: false,

        theme: ThemeData(
        useMaterial3: true, colorScheme: lightColorScheme,



    ),
    darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme,),


      routerConfig: router,

    );
  }
}
