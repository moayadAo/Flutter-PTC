import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ptc_test/components/Cart.dart';
import 'package:ptc_test/components/product.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({required this.name});
  final String? name;
  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xffffffff),
          title: Text('Bavearges',
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                  color: Color(0xff181725),
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              )),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                icon: const Icon(Icons.add),
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xff53B175)),
                  iconColor: MaterialStatePropertyAll(Color(0xffffffff)),
                  minimumSize: MaterialStatePropertyAll(Size(10, 10)),
                  shape: MaterialStatePropertyAll(
                      OvalBorder(side: BorderSide(color: Color(0xff53B175)))),
                ),
                onPressed: () {},
              ),
            ),
          ]),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.75),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          itemCount: bavegers.length,
          itemBuilder: (context, index) {
            return ProductWidget(
                product: bavegers[index],
                press: () => myCart.addProduct(bavegers[index]));
          }),
    );
  }
}
