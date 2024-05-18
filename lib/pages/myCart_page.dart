import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ptc_test/components/Cart.dart';
import 'package:ptc_test/components/checkout.dart';
import 'package:ptc_test/components/custom_button.dart';
import 'package:ptc_test/components/product.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  double total = 0;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  void showCheckoutPopup() {
    scaffoldKey.currentState!.showBottomSheet((context) => Container(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 30),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Checkout',
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Color(0xFF181725),
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 22.0),
                      child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: const Icon(
                            Icons.close,
                            size: 20,
                            color: Color(0xFF181725),
                          )),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFFE2E2E2B2),
                height: 20,
              ),
              elementCheckout(title: 'Delivery', buttonName: 'Select Method'),
              const Divider(
                thickness: 1,
                color: Color(0xFFE2E2E2B2),
              ),
              elementCheckout(title: 'Payment', buttonName: 'Select Method'),
              const Divider(
                thickness: 1,
                color: Color(0xFFE2E2E2B2),
              ),
              elementCheckout(title: 'Promo Code', buttonName: 'Pick Discount'),
              const Divider(
                thickness: 1,
                color: Color(0xFFE2E2E2B2),
              ),
              elementCheckout(
                  title: 'Total Cost',
                  buttonName: '\$${total.toStringAsFixed(2)}'),
              const Divider(
                thickness: 1,
                color: Color(0xFFE2E2E2B2),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                child: Text(
                  'By placing an order you agree to our Terms And Conditions',
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                      color: Colors.black54,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              CustomButton(
                  label: 'Place Order',
                  whatDo: () {
                    Navigator.pushReplacementNamed(context, 'order');
                  })
            ],
          ),
        ));
  }

  int ind = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff53B175),
        unselectedItemColor: const Color(0xff181725),
        currentIndex: ind,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            ind = index;
            if (ind == 1) {
              Navigator.pushReplacementNamed(context, 'explore');
            }
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                Icons.shopping_cart), // Consider using a custom icon for cart
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xffffffff),
        title: Text('My Cart',
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Color(0xff181725),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  total += myCart.myCart![index].cost;
                  return CartWidget(product: myCart.myCart![index]);
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    indent: 25.2,
                    endIndent: 25.2,
                    thickness: 1,
                    color: Color(0xffE2E2E2),
                  );
                },
                itemCount: myCart.myCart!.length),
          ),
          CustomButton(label: 'Go to Checkout', whatDo: showCheckoutPopup)
        ],
      ),
    );
  }
}
