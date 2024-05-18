import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ptc_test/pages/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarColor: Color(0xff53B175),
          statusBarIconBrightness: Brightness.light,
        ),
        child: Scaffold(
          backgroundColor: const Color(0xff53B175),
          body: Center(
            child: Image.asset(
              'assets/images/logo PTC.png',
              height: 68.61,
              width: 267,
            ),
          ),
        ),
      ),
    );
  }
}
