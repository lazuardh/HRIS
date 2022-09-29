import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class PresentItemHistory extends StatelessWidget {
  const PresentItemHistory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.width * 0.02),
      padding:
          EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 10),
      color: neutral100,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: primary300, borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                Text(
                  '21',
                  style: text4(neutral800, medium),
                ),
                Text(
                  'Wed',
                  style: text4(neutral800, medium),
                )
              ],
            ),
          ),
          SizedBox(width: size.width * 0.05),
          Column(
            children: [
              Text(
                "Clock in",
                style: text3(neutral800, medium),
              ),
              Text(
                "08.15",
                style: text3(neutral800, medium),
              )
            ],
          ),
          SizedBox(width: size.width * 0.05),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Clock out",
                style: text3(neutral800, medium),
              ),
              Text(
                "-",
                style: text3(neutral800, medium),
              )
            ],
          )
        ],
      ),
    );
  }
}
