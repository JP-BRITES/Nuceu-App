import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nuceu/view/screens/home_screen.dart';
import 'package:nuceu/view/screens/login_screen.dart';
import 'package:nuceu/view/screens/quem_somos.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyC-6MXlDkcAdZTXwEOQl3HnSzeSaxCym_s',
        appId: '1:882302187340:android:1d79d3577052fadc9a01e9',
        messagingSenderId: '882302187340',
        projectId: 'univasf-nuceu-firebase'),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nuceu - APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        sliderTheme:
            SliderThemeData(overlayShape: SliderComponentShape.noOverlay),
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/login-screen': (context) => const LoginScreen(),
        '/quem-somos': (context) => const QuemSomos(),
        //'/home-screen': (context) => const HomeScreen(),
      },
    );
  }
}
