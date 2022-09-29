import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class ButtonDecline extends StatelessWidget {
  const ButtonDecline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: accentRed200, borderRadius: BorderRadius.circular(5)),
      child: Text(
        "Decline",
        style: text5(accentRed600, regular),
      ),
    );
  }
}
