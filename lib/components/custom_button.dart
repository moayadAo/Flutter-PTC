import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//
class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.label, required this.whatDo});
  final String label;
  void Function() whatDo;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: whatDo,
      child: Container(
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        alignment: Alignment.center,
        width: double.infinity,
        height: 67,
        decoration: BoxDecoration(
            color: Color(0xFF53B175),
            border: Border.all(width: 1, color: const Color(0xff53B175)),
            borderRadius: const BorderRadius.all(Radius.circular(19))),
        child: Text(
          label,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Color(0xFFFFF9FF),
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
