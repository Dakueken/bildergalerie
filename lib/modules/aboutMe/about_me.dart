import 'package:bildergalerie/modules/aboutMe/kaya_mueller_text.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 150,
          backgroundImage: AssetImage("lib/shared/assets/images/kaya.jpeg"),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                "Kaya Müller",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              Text(
                "Fotograph",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              Expanded(child: SingleChildScrollView(child: Text(Kaya.kaya))),
            ],
          ),
        ),
      ],
    );
  }
}
