import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';

import 'components/body_karyawan.dart';

class HomeKaryawan extends StatelessWidget {
  const HomeKaryawan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: neutral800,
      body: BodyKaryawan(),
    );
  }
}
