import 'package:bub/landing_page/about_association_page.dart';
import 'package:bub/landing_page/donation_page.dart';
import 'package:bub/landing_page/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  ///Landing page appbar
  AppBar appBar() {
    return AppBar(
      title: const Text("BUB APP"),
    );
  }

  ///Bottom Navigation bar buttons to switch between
  /// about association, about donation and sign In.

  Widget bottomNavigationBar() {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
      },

      selectedIndex: currentPageIndex,
      destinations: const <Widget>[
        NavigationDestination(

          icon: Icon(Icons.info_rounded),
          label: 'About Us',
        ),
        NavigationDestination(
          icon: Icon(Icons.euro_rounded),
          label: 'Donate',
        ),
        NavigationDestination(

          icon: Icon(Icons.login_rounded),
          label: 'Login',
        ),
      ],
    );
  }

  ///Landing page body
  Widget body() {
    return <Widget>[
    const AboutAssociationPage(),

      DonationPage(),

    LoginPage(),
    ][currentPageIndex];
  }
}
