import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class BuildCardAdmin extends StatelessWidget {
  const BuildCardAdmin({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.2,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.center,
        colors: [
          primary300,
          neutral800,
        ],
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: EdgeInsets.only(left: size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello Admin",
                  style: heading2(primary400, semibold),
                ),
                SizedBox(height: size.height * 0.01),
                Text(
                  "Dont't forget to check your\nApproval system",
                  style: text4(neutral100, semibold),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            width: size.width * 0.3,
            height: size.height * 0.1,
            child: Stack(
              children: [
                Positioned(
                  top: 15,
                  right: 0,
                  child: Container(
                    width: size.width * 0.15,
                    height: size.height * 0.05,
                    color: primary300,
                  ),
                ),
                Positioned(
                  left: 0,
                  child: CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: primary300,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: const BoxDecoration(
                        color: primary300,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/images/avatar.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
