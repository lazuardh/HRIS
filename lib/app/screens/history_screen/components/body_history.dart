import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/history_screen/components/build_item_history.dart';
import 'package:flutter_application_1/app/screens/history_screen/widget/build_button_approved.dart';
import 'package:flutter_application_1/app/screens/history_screen/widget/build_button_decline.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import '../widget/build_button_awaiting.dart';
import 'build_card_history.dart';
import 'build_overtime_item_history.dart';
import 'build_present_item_history.dart';

class BodyHistory extends StatefulWidget {
  const BodyHistory({
    Key? key,
  }) : super(key: key);

  @override
  State<BodyHistory> createState() => _BodyHistoryState();
}

class _BodyHistoryState extends State<BodyHistory> {
  String itemActive = 'Present';

  Widget itemDropdown(itemActive) {
    Widget? empty;
    switch (itemActive) {
      case 'Present':
        empty = const PresentItemHistory();
        break;
      case 'Overtime':
        empty = Column(
          children: const [
            OvertimeItemHistory(buttonType: ButtonAwaiting()),
            OvertimeItemHistory(buttonType: ButtonApproved()),
            OvertimeItemHistory(buttonType: ButtonDecline()),
          ],
        );
        break;
      case 'Leave':
        empty = Column(
          children: const [
            ItemHistory(
                buttonType: ButtonAwaiting(),
                appliedDuration: '3 Days',
                reason: 'Cuti tahunan'),
            ItemHistory(
                buttonType: ButtonApproved(),
                appliedDuration: '3 Days',
                reason: 'Cuti tahunan')
          ],
        );
        break;
      case 'Permit':
        empty = Column(
          children: const [
            ItemHistory(
                buttonType: ButtonAwaiting(),
                appliedDuration: '1 Days',
                reason: 'Izin ambil raport anak'),
            ItemHistory(
                buttonType: ButtonDecline(),
                appliedDuration: '3 Days',
                reason: 'izin beli mobil')
          ],
        );
        break;
      default:
        empty = const Text('Type History is Empty');
    }
    return empty;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.2,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: neutral100,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(size.height * 0.06),
                    topRight: Radius.circular(size.height * 0.06),
                  ),
                ),
              ),
            )
          ],
        ),
        Column(
          children: [
            BuildCardHistory(
                size: size,
                onChange: (String? value) {
                  setState(() {
                    itemActive = value!;
                  });
                }),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return itemDropdown(itemActive);
                  }),
            ),
          ],
        ),
      ],
    );
  }
}
