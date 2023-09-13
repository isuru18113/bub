import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutAssociationPage extends StatefulWidget {
  const AboutAssociationPage({Key? key}) : super(key: key);

  @override
  _AboutAssociationPageState createState() => _AboutAssociationPageState();
}

class _AboutAssociationPageState extends State<AboutAssociationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  aboutAssociation(),
    );
  }

  ///Screen about the association

  Widget aboutAssociation() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          appLogo(),

          contactNumber(),

          socialMediaButtons()
        ],
      ),
    );
  }

  ///Association Logo
  Widget appLogo() {
    return const FlutterLogo(size: 200,);
  }

  ///Association contact number
  Widget contactNumber() {
    return Text("23 23 230 23",style: Theme.of(context).textTheme.displayMedium,);
  }

  ///Association social media links
  Widget socialMediaButtons() {
    return const Text("Social media");
  }
}
