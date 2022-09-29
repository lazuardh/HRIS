import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class Notifikasi extends StatelessWidget {
  const Notifikasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.height * 0.01),
          child: Column(
            children: [
              /// heading card
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.02),
                decoration: BoxDecoration(
                    color: primary300,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(size.height * 0.04))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "10.12 AM",
                      style: text4(neutral800, regular),
                    ),
                    Text(
                      "5 September 2022",
                      style: text4(neutral800, semibold),
                    )
                  ],
                ),
              ),

              ///CONTENT CARD
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.05,
                    vertical: size.height * 0.02),
                decoration: BoxDecoration(
                    color: neutral100,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(size.height * 0.04))),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Yeay! Your Request for Cuti from 20 - 25 December is Approved",
                        style: text3(neutral800, semibold),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
