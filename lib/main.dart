import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'Screen/CallsPage.dart';
import 'Screen/ContactsPage.dart';
import 'Screen/HomePage.dart';
import 'Screen/MessagesPage.dart';
import 'box.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;

  void goToPage(index) {
    setState(() {
      currentIndex = index;
    });
  }

  List _pages = [
    //home page
    HomePage(),
    //CallsPage
    CallsPage(),
    //MessagesPage
    MessagesPage(),
    //ContactsPage
    ContactsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 70,
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Container(
                child: Icon(Icons.menu),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F7FA),
                  borderRadius: BorderRadius.circular(12),
                )),
          ),
          title: Text(
            '+12021234567',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Color(0xFF29364E)),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: SizedBox(
                height: 50,
                width: 45,
                child: Container(
                    child: Icon(Icons.analytics_outlined),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F7FA),
                      borderRadius: BorderRadius.circular(100),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: SizedBox(
                height: 50,
                width: 45,
                child: Container(
                    child: Icon(Icons.message_outlined),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F7FA),
                      borderRadius: BorderRadius.circular(100),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: SizedBox(
                height: 50,
                width: 45,
                child: Container(
                    child: Icon(Icons.notifications_outlined),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F7FA),
                      borderRadius: BorderRadius.circular(100),
                    )),
              ),
            ),
          ],
        ),
        body: _pages[currentIndex],
        bottomNavigationBar: Container(
          color: Color(0xFFF5F7FA),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              child: GNav(
                onTabChange: (index) => goToPage(index),
                backgroundColor: Color(0xFFF5F7FA),
                color: Color(0xFF8693A3),
                activeColor: Color(0xFF29364E),
                tabBackgroundColor: Color(0xFFBFFF07),
                gap: 8,
                padding: EdgeInsets.all(16),
                tabs: const [
                  GButton(icon: Icons.home_outlined, text: 'Home'),
                  GButton(icon: Icons.phone_android_outlined, text: 'Calls'),
                  GButton(
                    icon: Icons.message_outlined,
                    text: 'Messages',
                  ),
                  GButton(
                    icon: Icons.perm_identity_outlined,
                    text: 'Contacts',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
