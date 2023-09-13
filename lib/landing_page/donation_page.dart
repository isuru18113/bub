import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/routes.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({Key? key}) : super(key: key);

  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  @override
  Widget build(BuildContext context) {
    return body();
  }

  Widget body(){
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: donationDescriptionText(),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: donationAccountInformation(),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(alignment: Alignment.bottomRight,child: donateButton()),
        ),

      ],
    );
  }

  ///General information about the donation.
  Widget donationDescriptionText() {
    return Text("You can donate to this app and make our sociaty more good",
      style: Theme.of(context).textTheme.bodyLarge,);
  }

  ///Information about the bank accounts and other details.
  Widget donationAccountInformation() {
    return ListTile(
        title: Text("Bank details:"),
      subtitle: Text("Account information details"),
    );
  }

  ///Button for donation site.
  Widget donateButton() {
    return FilledButton(
        onPressed: () {

          GoRouter.of(context).push(Routes.createEventPage);
        }, child: Text("Donate"));
  }
}
