import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class ItemPresensi extends StatelessWidget {
  const ItemPresensi({Key? key, this.onTap}) : super(key: key);

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.height * 0.04),
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.08, vertical: size.height * 0.01),
          decoration: BoxDecoration(
              color: primary300,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(size.height * 0.05),
                  bottomRight: Radius.circular(size.height * 0.05))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/avatar.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: size.width * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nadia Nazila M.",
                    style: heading3(neutral800, semibold),
                  ),
                  Text(
                    "Production Manager",
                    style: text4(neutral800, medium),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                        size: 16,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "PT Baracipta Esa Engineering Office",
                        style: text5(neutral800, regular),
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Clock In",
                            style: text2(neutral800, bold),
                          ),
                          Text(
                            "07.45",
                            style: text3(accentRed700, regular),
                          )
                        ],
                      ),
                      SizedBox(width: size.width * 0.03),
                      Column(
                        children: [
                          Text(
                            "Clock In",
                            style: text2(neutral800, bold),
                          ),
                          Text(
                            "-",
                            style: text3(accentRed700, regular),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: size.width * 0.25,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              width: size.width * 0.2,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: neutral800, borderRadius: BorderRadius.circular(10)),
              child: Text(
                "Approve",
                style: text3(neutral100, bold),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: size.width * 0.25,
          child: Container(
            alignment: Alignment.center,
            width: size.width * 0.2,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: accentRed800, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Decline",
              style: text3(neutral100, bold),
            ),
          ),
        )
      ],
    );
  }
}
