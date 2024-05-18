import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/man_hold.png'),
              alignment: Alignment.center,
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 400),
            Image.asset(
              'assets/images/logo.png',
              width: 43.47,
              height: 38.36,
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: Text(
                'Welcome \nto our store',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  fontSize: 48,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w400,
                )),
              ),
            ),
            Text(
              'Get your groceries in as fast as one hour',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 16,
                color: Color(0xffc6bcb7),
                fontWeight: FontWeight.w400,
              )),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'explore');
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xff53B175)),
                    alignment: Alignment.center,
                    minimumSize:
                        MaterialStateProperty.all(const Size(353, 67))),
                child: Text(
                  'Get Started',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
