import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class elementCheckout extends StatelessWidget {
  elementCheckout({super.key, required this.title, required this.buttonName});
  String title;
  String buttonName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.none),
              ),
            ),
          ),
          Text(
            buttonName,
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  color: Color(0xFF181725),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  decoration: TextDecoration.none),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.arrow_forward,
              size: 20,
              color: Color(0xFF181725),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
