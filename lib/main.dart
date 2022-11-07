import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
      apiKey: "AIzaSyBnZn7aPlUK4BtrHmRyFWbO6ztlLz88OLI",
      projectId: "init-62754",
      messagingSenderId: "33941724300",
      appId: "1:33941724300:web:0647ee4ee651fd2f5a2fa9",
    ));
  } else {
    await Firebase.initializeApp();
  }
  String? key = await FirebaseMessaging.instance.getToken();
  print(key);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
        home: MyAppMain(),
        debugShowCheckedModeBanner: false,
      );
}

class MyAppMain extends StatefulWidget {
  const MyAppMain({super.key});

  @override
  State<MyAppMain> createState() => _MyAppMainState();
}

class _MyAppMainState extends State<MyAppMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('data in out'),
      ),
    );
  }
}
