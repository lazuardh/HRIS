import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class BuildNotifications extends StatelessWidget {
  const BuildNotifications({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: size.height * 0.078,
          left: size.width * 0.05,
          right: size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: primary300,
                child: Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/avatar.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo Fareza',
                    style: text4(
                      neutral200,
                      regular,
                    ),
                  ),
                  Text(
                    'Welcome to HR System',
                    style: text2(
                      neutral100,
                      semibold,
                    ),
                  )
                ],
              ),
            ],
          ),
          const Icon(
            Icons.notifications,
            color: primary300,
          )
        ],
      ),
    );
  }
}
