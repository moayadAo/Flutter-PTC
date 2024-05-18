import 'package:flutter/material.dart';
import 'package:ptc_test/components/category.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int ind = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AnnotatedRegion(
        value: const SystemUiOverlayStyle(
          statusBarColor: Color(0xffffffff),
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: const Color(0xff53B175),
              unselectedItemColor: const Color(0xff181725),
              currentIndex: ind,
              type: BottomNavigationBarType.fixed,
              onTap: (int index) {
                setState(() {
                  ind = index;
                  if (ind == 2) {
                    Navigator.pushReplacementNamed(context, 'cart');
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
                  icon: Icon(Icons
                      .shopping_cart), // Consider using a custom icon for cart
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
            backgroundColor: const Color(0xffffffff),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Find Products',
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        color: Color(0xff181725),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    )),
                Expanded(
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15),
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return CategoryWidget(
                            categories[index].color, categories[index].name,
                            () {
                          Navigator.pushNamed(context, 'products');
                        });
                      }),
                )
              ],
            )),
      ),
    );
  }
}
