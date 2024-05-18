import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Product {
  Product({
    required this.name,
    required this.quntity,
    required this.cost,
  });
  final String name;
  final String quntity;
  final double cost;
  int num = 1;
}

List<Product> bavegers = [
  Product(name: 'Pepsi Can', quntity: '330ml', cost: 4.99),
  Product(name: 'Coca Cola Can', quntity: '325ml', cost: 4.99),
  Product(name: 'Orenge Juice', quntity: '2L', cost: 8.99),
  Product(name: 'Apple & Grape Juice', quntity: '2L', cost: 5.99),
  Product(name: 'Sprite Can', quntity: '325ml', cost: 1.50),
  Product(name: 'Diet Coke', quntity: '355ml', cost: 1.99),
];

class ProductWidget extends StatelessWidget {
  ProductWidget({required this.product, required this.press});
  final Product product;
  void Function()? press;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 248.51,
      width: 173.32,
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          border: Border.all(
            color: const Color(0xffE2E2E2),
            width: 1,
            style: BorderStyle.solid,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(18))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              'assets/images/products/${product.name}.png',
              height: 92,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              product.name,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff181725),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              "${product.quntity},Price",
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7C7C7C),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '\$${product.cost}',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF181725),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xff53B175)),
                  iconColor: MaterialStatePropertyAll(Color(0xffffffff)),
                  minimumSize: MaterialStatePropertyAll(Size(30, 30)),
                  shape: MaterialStatePropertyAll(
                      OvalBorder(side: BorderSide(color: Color(0xff53B175)))),
                ),
                onPressed: press,
              ),
            ],
          )
        ],
      ),
    );
  }
}
