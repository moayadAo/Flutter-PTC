import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/components/custom_button.dart';

class OrderDone extends StatefulWidget {
  const OrderDone({super.key});

  @override
  State<OrderDone> createState() => _OrderDoneState();
}

class _OrderDoneState extends State<OrderDone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffeaf3f2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/tick.png',
            width: 269.08,
            height: 240.31,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 63, right: 36),
            child: Text(
              'Your Order has bee\n accepted',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Color(0xff181725),
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Container(
              alignment: Alignment.center,
              width: 306,
              height: 44,
              child: Text(
                'Your items has been placed and  is on it’s way to being processed',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 120,
          ),
          CustomButton(
              label: 'Track Order',
              whatDo: () {
                print('i am tracking order');
              }),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, 'home', (route) => true);
            },
            child: Container(
              width: 364,
              height: 67,
              alignment: Alignment.center,
              child: Text(
                'Back to Home',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Color(0xFF181725),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
