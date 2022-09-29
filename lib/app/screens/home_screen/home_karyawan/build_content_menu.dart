import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';

class BuildContentMenu extends StatelessWidget {
  const BuildContentMenu({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.3,
              height: size.height * 0.2,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: neutral200,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.pending_actions,
                    size: 50,
                  ),
                  SizedBox(height: 20),
                  Text('Overtime In')
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: size.width * 0.3,
              height: size.height * 0.2,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: neutral200,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.pending_actions,
                    size: 50,
                  ),
                  SizedBox(height: 20),
                  Text('Overtime Out')
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///content card
            Container(
              width: size.width * 0.3,
              height: size.height * 0.2,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: neutral200,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.ballot,
                    size: 50,
                  ),
                  SizedBox(height: 20),
                  Text('Cuti')
                ],
              ),
            ),
            const SizedBox(width: 10),
            Container(
              width: size.width * 0.3,
              height: size.height * 0.2,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: neutral200,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.note_alt,
                    size: 50,
                  ),
                  SizedBox(height: 20),
                  Text('Izin')
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
