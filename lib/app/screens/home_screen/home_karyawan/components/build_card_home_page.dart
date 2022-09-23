import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class BuildCardHomePage extends StatelessWidget {
  const BuildCardHomePage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.height * 0.03),
      decoration: BoxDecoration(
          color: neutral600, borderRadius: BorderRadius.circular(10)),
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/Fatal error.png"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Monday, 19 Sep 2022",
                      style: text4(primary300, semibold),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Anda belum melakukan \nclock in maupun clock out",
                      style: text4(neutral300, regular),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: primary300),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Clock In',
                      style: text3(neutral100, regular),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: primary300),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      'Clock In',
                      style: text3(neutral100, regular),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
