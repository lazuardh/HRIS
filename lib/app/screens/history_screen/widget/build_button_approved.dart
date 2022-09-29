import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class ButtonApproved extends StatelessWidget {
  const ButtonApproved({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: accentGreen200, borderRadius: BorderRadius.circular(5)),
      child: Text(
        "Approved",
        style: text5(accentGreen600, regular),
      ),
    );
  }
}
