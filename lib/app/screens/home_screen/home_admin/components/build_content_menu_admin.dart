import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';
import 'package:flutter_application_1/app/utilities/text_styles.dart';

class BuildContentMenuAdmin extends StatelessWidget {
  const BuildContentMenuAdmin({
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
            Stack(
              children: [
                Container(
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: neutral200,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.face,
                        color: neutral800,
                        size: 50,
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        'Clock in\nclock out',
                        style: text3(
                          neutral800,
                          regular,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: neutral800,
                    child: Text(
                      "10+",
                      style: text3(primary100, regular),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 5),
            Stack(
              children: [
                Container(
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: neutral200,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.timer,
                        size: 50,
                      ),
                      SizedBox(height: size.height * 0.02),
                      Text(
                        'Overtime\n',
                        style: text3(neutral800, regular),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: neutral800,
                    child: Text(
                      "2",
                      style: text3(primary100, regular),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///content card
            Stack(
              children: [
                Container(
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: neutral200,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.ballot,
                        size: 50,
                      ),
                      SizedBox(height: 20),
                      Text('Cuti')
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: neutral800,
                    child: Text(
                      "5",
                      style: text3(primary100, regular),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 5),
            Stack(
              children: [
                Container(
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: neutral200,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.note_alt,
                        size: 50,
                      ),
                      SizedBox(height: 20),
                      Text('Izin')
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 0,
                  child: CircleAvatar(
                    maxRadius: 20,
                    backgroundColor: neutral800,
                    child: Text(
                      "3",
                      style: text3(primary100, regular),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
