import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class BuildTime extends StatelessWidget {
  const BuildTime({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hadir",
              style: text2(primary200, semibold),
            ),
            SizedBox(height: size.height * 0.01),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [neutral800, primary400]),
              ),
              child: Text(
                "65",
                style: heading(neutral100, semibold),
              ),
            ),
          ],
        ),
        SizedBox(width: size.width * 0.05),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Izin",
              style: text2(primary200, semibold),
            ),
            SizedBox(height: size.height * 0.01),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [neutral800, primary400]),
              ),
              child: Text(
                "04",
                style: heading(neutral100, semibold),
              ),
            ),
          ],
        ),
        SizedBox(width: size.width * 0.05),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Cuti",
              style: text2(primary200, semibold),
            ),
            SizedBox(height: size.height * 0.01),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [neutral800, primary400]),
              ),
              child: Text(
                "07",
                style: heading(neutral100, semibold),
              ),
            ),
          ],
        )
      ],
    );
  }
}
