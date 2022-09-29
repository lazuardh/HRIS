import 'package:flutter/material.dart';

import '../../../utilities/colors.dart';

class BuildCircleAvatar extends StatelessWidget {
  const BuildCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/avatar.png"),
            ),
            Positioned(
              bottom: -10,
              right: 6,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: size.width * 0.07,
                  height: size.height * 0.07,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: primary300,
                  ),
                  child: const Icon(
                    Icons.edit_outlined,
                    size: 16,
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: const Text(
            'Dani Kurniawati',
            style: TextStyle(
              color: neutral100,
              fontSize: 17,
            ),
          ),
        ),
        const Text(
          'UI/UX Designer',
          style: TextStyle(
            color: neutral300,
          ),
        )
      ],
    );
  }
}
