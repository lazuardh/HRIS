import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class BuildTanggal extends StatelessWidget {
  const BuildTanggal({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: neutral200, borderRadius: BorderRadius.circular(5)),
          child: Text(
            "22",
            style: heading3(neutral800, semibold),
          ),
        ),
        SizedBox(width: size.width * 0.03),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: neutral200, borderRadius: BorderRadius.circular(5)),
          child: Text(
            "Okt",
            style: heading3(neutral800, semibold),
          ),
        ),
        SizedBox(width: size.width * 0.03),
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: neutral200, borderRadius: BorderRadius.circular(5)),
          child: Text(
            "'22",
            style: heading3(neutral800, semibold),
          ),
        )
      ],
    );
  }
}
