import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/components/bottom_nav_bar.dart';
import 'package:shoes_app/pages/cart_page.dart';
import 'package:shoes_app/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // logout fuction
  logout() {
    FirebaseAuth.instance.signOut();
  }

  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index
  //when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Padding(
              padding: EdgeInsets.only(left: 10, top: 5),
              child: Icon(Icons.menu),
            ),
          ),
        ),
      ),
      drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 146, 173, 179),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // logo
                  DrawerHeader(
                    child: Image.asset(
                      'images/pumalogo.png',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),

                  // other pages
                  // Home
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(Icons.home_outlined),
                      title: Text('Home'),
                    ),
                  ),

                  //About
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(Icons.info),
                      title: Text('About'),
                    ),
                  ),
                ],
              ),

              //Logout
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                child: ListTile(
                  onTap: () {
                    logout();
                  },
                  leading: const Icon(Icons.logout_outlined),
                  title: const Text('Logout'),
                ),
              ),
            ],
          )),
      backgroundColor: const Color.fromARGB(255, 146, 173, 179),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
