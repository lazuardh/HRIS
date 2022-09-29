import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton(
      {Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final Widget icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: 30,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [icon],
      ),
    );
  }
}
