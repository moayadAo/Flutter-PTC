import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Category {
  const Category(this.name, this.color);
  final String name;
  final Color color;
}

List<Category> categories = const [
  Category('Bakery & Snacks', Color(0xFFD3B0E0)),
  Category('Beverages', Color(0xFFB7DFF5)),
  Category('Cooking Oil & Ghee', Color(0xFFF8A44C)),
  Category('Dairy & Eggs', Color(0xFFFDE598)),
  Category('Frash Fruits & Vegetable', Color(0xFF53B175)),
  Category('Meat & Fish', Color(0xFFF7A593)),
  Category('Bakery & Snacks', Color(0xFFD3B0E0)),
  Category('Bakery & Snacks', Color(0xFFD3B0E0)),
  Category('Bakery & Snacks', Color(0xFFD3B0E0)),
  Category('Bakery & Snacks', Color(0xFFD3B0E0)),
];

class CategoryWidget extends StatelessWidget {
  CategoryWidget(this.color, this.name, this.ontap);
  Color color;
  String name;
  void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 174,
        height: 189,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(width: 1, style: BorderStyle.solid, color: color),
          borderRadius: const BorderRadius.all(Radius.circular(18)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/category/$name.png',
              width: 111.38,
              height: 74.9,
            ),
            Text(name,
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  color: Color(0xFF181725),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                )))
          ],
        ),
      ),
    );
  }
}
