import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:notely/views/login_view.dart';
import 'firebase_options.dart';

void main() async {
  // Ensure that Flutter bindings are initialized before calling Firebase.
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase with the default options for the current platform.
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 69, 42, 116)),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(stream: FirebaseAuth.instance.authStateChanges(), builder: (context, snapshot){
      if(snapshot.connectionState == ConnectionState.waiting){
        return Scaffold(
          body: Center(child: CircularProgressIndicator(),),
        );
      }else if (snapshot.hasData){
          return Scaffold(
          body: Center(child: Text("User is logged in"),),
        );
      }else if(snapshot.hasError){
        return   Scaffold(
          body: Center(child: Text("Error occurred"),),
        );
      } else {
        return LoginView();
      }
    });
  }
}