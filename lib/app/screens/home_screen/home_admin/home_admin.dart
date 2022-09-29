import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/home_screen/home_admin/components/body_admin.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';

class HomeAdmin extends StatelessWidget {
  const HomeAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: neutral800,
      body: BodyAdmin(),
    );
  }
}
