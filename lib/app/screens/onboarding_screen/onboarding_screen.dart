import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/onboarding_screen/components/body.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primary300,
      body: Body(),
    );
  }
}
