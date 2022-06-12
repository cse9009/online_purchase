import 'package:flutter/material.dart';
import 'package:online_purchase/sate_management/app_settings.dart';
import 'package:online_purchase/screens/layout.dart';
import 'package:provider/provider.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preferences = await StreamingSharedPreferences.instance;
  runApp(MyApp(
    streamingSharedPreferences: preferences,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.streamingSharedPreferences})
      : super(key: key);
  final StreamingSharedPreferences streamingSharedPreferences;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppSettings>(
      create: (BuildContext context) =>
          AppSettings(preferences: streamingSharedPreferences),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Online Purchase',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.green,
          fontFamily: 'SolaimanLipi',
        ),
        home: const Layout(),
      ),
    );
  }
}
