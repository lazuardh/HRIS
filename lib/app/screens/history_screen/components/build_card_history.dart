import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';
import 'package:intl/intl.dart';

class BuildCardHistory extends StatefulWidget {
  const BuildCardHistory({
    Key? key,
    required this.size,
    this.onChange,
  }) : super(key: key);

  final Size size;
  final Function(String value)? onChange;

  @override
  State<BuildCardHistory> createState() => _BuildCardHistoryState();
}

class _BuildCardHistoryState extends State<BuildCardHistory> {
  DateTime time = DateTime.now();
  String startDate = 'DD/MM/YY';
  String endDate = 'DD/MM/YY';
  String dropdownValue = 'Present';
  List<String> itemHistory = ['Present', 'Overtime', 'Leave', 'Permit'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: widget.size.width * 0.08,
          vertical: widget.size.height * 0.03),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: neutral500, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Start Date",
                    style: text3(neutral100, medium),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    decoration:
                        BoxDecoration(border: Border.all(color: neutral300)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: primary300,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(
                            Icons.calendar_today_outlined,
                            color: neutral800,
                          ),
                        ),
                        SizedBox(width: widget.size.width * 0.04),
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
                                startDate = DateFormat('dd/MM/yyy')
                                    .format(picker)
                                    .toString();
                              });
                            }
                          },
                          child: Text(
                            startDate,
                            style: text3(neutral100, medium),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "End Date",
                    style: text3(neutral100, medium),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    decoration:
                        BoxDecoration(border: Border.all(color: neutral300)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: primary300,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Icon(
                            Icons.calendar_today_outlined,
                            color: neutral800,
                          ),
                        ),
                        SizedBox(width: widget.size.width * 0.04),
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
                                endDate = DateFormat('dd/MM/yyy')
                                    .format(picker)
                                    .toString();
                              });
                            }
                          },
                          child: Text(
                            endDate,
                            style: text3(neutral100, medium),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
            child: Text(
              "History Type",
              style: text4(neutral100, regular),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            decoration: BoxDecoration(
                border: Border.all(color: neutral100, width: 1),
                borderRadius: BorderRadius.circular(5)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: dropdownValue,
                iconEnabledColor: neutral100,
                isExpanded: true,
                dropdownColor: neutral800,
                style: text4(neutral100, semibold),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                  widget.onChange!(value!);
                },
                items:
                    itemHistory.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            width: size.width,
            decoration: BoxDecoration(
                color: primary300, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Search",
              style: text4(neutral800, medium),
            ),
          )
        ],
      ),
    );
  }
}
