import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/Navigation/on_generate_route.dart';
import 'package:flutter_quran_api_practice/views/screens/Home_Page_Screens/home_page_deisgn.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

// dart fix --apply --code=unused_import

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    GoogleFonts.config.allowRuntimeFetching = false;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: HomePageDesign.pageName,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
