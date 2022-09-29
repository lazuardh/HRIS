import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/approval_screen/components/build_item_presensi.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';
import 'package:intl/intl.dart';

import 'build_card_present.dart';

class BodyApproval extends StatefulWidget {
  const BodyApproval({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyApproval> createState() => _BodyApprovalState();
}

class _BodyApprovalState extends State<BodyApproval> {
  List acc = [];
  DateTime time = DateTime.now();
  String showDate = '27';
  String showYear = '2022';
  String showMonth = '09';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        /// date picker
        GestureDetector(
          onTap: () async {
            DateTime? picker = await showDatePicker(
              context: context,
              initialDate: time,
              firstDate: DateTime(2000),
              lastDate: DateTime(2030),
            );
            if (picker != null) {
              setState(() {
                showDate = DateFormat('dd').format(picker).toString();
                showMonth = DateFormat('MM').format(picker).toString();
                showYear = DateFormat('yyy').format(picker).toString();
              });
            }
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                decoration: BoxDecoration(
                  color: neutral200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  showDate,
                  style: text2(neutral800, medium),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                decoration: BoxDecoration(
                  color: neutral200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  showMonth,
                  style: text2(neutral800, medium),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                decoration: BoxDecoration(
                  color: neutral200,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  showYear,
                  style: text2(neutral800, medium),
                ),
              )
            ],
          ),
        ),

        ///search
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.2, vertical: size.height * 0.02),
          decoration: BoxDecoration(
              border: Border.all(color: neutral800, width: 1),
              borderRadius: BorderRadius.circular(size.height * 0.05)),
          child: const TextField(
              decoration: InputDecoration(
            hintText: 'search any data here',
            hintStyle: TextStyle(fontSize: 14, fontWeight: medium),
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none,
          )),
        ),

        ///item list
        Expanded(
          child: SizedBox(
            width: size.width,
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return acc.contains(index) == false
                      ? ItemPresensi(
                          onTap: () {
                            setState(() {
                              acc.add(index);
                            });
                          },
                        )
                      : CardPresent(size: size);
                }),
          ),
        ),
      ],
    );
  }
}
