import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'build_card_admin.dart';
import 'build_content_menu_admin.dart';
import 'build_tanggal.dart';
import 'build_time.dart';

class BodyAdmin extends StatefulWidget {
  const BodyAdmin({Key? key}) : super(key: key);

  @override
  State<BodyAdmin> createState() => _BodyAdminState();
}

class _BodyAdminState extends State<BodyAdmin> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.only(top: size.height * 0.05),
            child: SizedBox(
              width: size.width,
              height: size.height * 0.2,
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                children: [
                  BuildCardAdmin(size: size),
                  BuildTime(size: size),
                ],
              ),
            )),
        SizedBox(
          height: size.height * 0.05,
          child: SmoothPageIndicator(
            controller: controller,
            count: 2,
            effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 10,
              dotColor: primary300,
              activeDotColor: primary300,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top: size.height * 0.05),
            width: size.width,
            decoration: BoxDecoration(
                color: neutral100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.height * 0.08),
                    topRight: Radius.circular(size.height * 0.08))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BuildTanggal(size: size),
                SizedBox(height: size.height * 0.05),
                BuildContentMenuAdmin(size: size),
              ],
            ),
          ),
        )
      ],
    );
  }
}
