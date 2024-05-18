import 'package:flutter/material.dart';
import 'product.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart {
  List<Product>? myCart = [
    Product(name: 'Bell Pepper Red', quntity: '1Kg', cost: 4.99),
    Product(name: 'Egg Chicken Red', quntity: '4pcs', cost: 1.99),
    Product(name: 'Organic Bananas', quntity: '12Kg', cost: 3.00),
    Product(name: 'Ginger', quntity: '250gm', cost: 2.99),
  ];
  void addProduct(Product product) {
    myCart!.add(product);
    if (myCart!.contains(product)) {
      product.num++;
    }
    print("product name = ${product.name} + quantity = ${product.num}");
  }
}

Cart myCart = Cart();

class CartWidget extends StatefulWidget {
  CartWidget({required this.product});
  Product product;
  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 155,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/products/${widget.product.name}.png',
            width: 70, //try comment
            height: 80, // try comment
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.product.name,
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Color(0xff181725),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  )),
              Text(
                '${widget.product.quntity}, Price',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF7C7C7C),
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffF0F0F0)),
                        iconColor: MaterialStatePropertyAll(Color(0xFFB3B3B3)),
                        minimumSize: MaterialStatePropertyAll(Size(45, 45)),
                        shape: MaterialStatePropertyAll(OvalBorder(
                            side: BorderSide(color: Color(0xffF0F0F0)))),
                      ),
                      onPressed: () {
                        if (widget.product.num > 1) {
                          setState(() {
                            widget.product.num--;
                          });
                        } else {
                          print('can\'t');
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17.45),
                      child: Text(
                        '${widget.product.num}',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF181725),
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffF0F0F0)),
                        iconColor: MaterialStatePropertyAll(Color(0xFF53B175)),
                        minimumSize: MaterialStatePropertyAll(Size(45, 45)),
                        shape: MaterialStatePropertyAll(OvalBorder(
                            side: BorderSide(color: Color(0xffF0F0F0)))),
                      ),
                      onPressed: () {
                        setState(() {
                          widget.product.num++;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.close),
                color: const Color(0xffB3B3B3),
                iconSize: 14,
              ),
              const SizedBox(height: 13),
              Text(
                '\$${widget.product.cost}',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF181725),
                      decoration: TextDecoration.none),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
