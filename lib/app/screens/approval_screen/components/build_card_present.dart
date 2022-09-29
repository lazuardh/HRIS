import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class CardPresent extends StatelessWidget {
  const CardPresent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: size.width,
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.01),
              margin: EdgeInsets.only(
                  top: 30, left: size.width * 0.08, right: size.width * 0.08),
              decoration: BoxDecoration(
                  color: primary300,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(size.height * 0.05))),
              child: Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: size.width * 0.58,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nadia Nazila M.",
                        style: text2(neutral800, bold),
                      ),
                      Row(
                        children: [
                          Text(
                            "Production Manager",
                            style: text5(neutral800, medium),
                          ),
                          SizedBox(width: size.width * 0.05),
                          Text(
                            "Present",
                            style: text5(accentGreen400, medium),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              width: size.width,
              padding: const EdgeInsets.all(3),
              margin: EdgeInsets.symmetric(
                horizontal: size.width * 0.08,
              ),
              decoration: BoxDecoration(
                  color: neutral100,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(size.height * 0.05))),
              child: SizedBox(
                width: size.width * 0.61,
                child: Row(
                  children: [
                    Text(
                      "Clock in",
                      style: text4(neutral800, medium),
                    ),
                    SizedBox(width: size.width * 0.01),
                    Text(
                      "07.45",
                      style: text4(accentRed600, medium),
                    ),
                    SizedBox(width: size.width * 0.04),
                    Text(
                      "Clock Out",
                      style: text4(neutral800, medium),
                    ),
                    SizedBox(width: size.width * 0.02),
                    Text(
                      "07.45",
                      style: text4(accentRed600, medium),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          left: size.width * 0.12,
          child: Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: primary300,
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              maxRadius: 30,
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
          ),
        ),
      ],
    );
  }
}
