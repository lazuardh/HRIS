import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class ItemHistory extends StatelessWidget {
  const ItemHistory(
      {Key? key,
      required this.buttonType,
      required this.appliedDuration,
      required this.reason})
      : super(key: key);

  final Widget buttonType;
  final String appliedDuration;
  final String reason;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.width * 0.02),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Wed, 21 Sept",
                style: text3(neutral800, medium),
              ),
              buttonType
            ],
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.calendar_today_outlined,
                color: primary300,
                size: 30,
              ),
              SizedBox(width: size.width * 0.04),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Applied Duration",
                    style: text4(neutral800, regular),
                  ),
                  Text(
                    appliedDuration,
                    style: text3(neutral800, medium),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.library_books,
                color: primary300,
                size: 30,
              ),
              SizedBox(width: size.width * 0.04),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  "Reason",
                  style: text4(neutral800, regular),
                ),
                Text(
                  reason,
                  style: text4(neutral800, medium),
                )
              ]),
            ],
          )
        ],
      ),
    );
  }
}
