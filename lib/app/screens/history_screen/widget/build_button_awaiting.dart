import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class ButtonAwaiting extends StatelessWidget {
  const ButtonAwaiting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: primary300, borderRadius: BorderRadius.circular(5)),
      child: Text(
        "Awaiting",
        style: text5(primary600, regular),
      ),
    );
  }
}
