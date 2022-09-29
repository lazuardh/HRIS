import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import '../build_content_menu.dart';
import 'build_card_home_page.dart';
import 'build_notification.dart';

class BodyKaryawan extends StatelessWidget {
  const BodyKaryawan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: size.height * 0.4),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: neutral100,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
              ),
            )
          ],
        ),
        Column(
          children: [
            BuildNotifications(size: size),
            BuildCardHomePage(size: size),
            BuildContentMenu(size: size)
          ],
        ),
      ],
    );
  }
}
