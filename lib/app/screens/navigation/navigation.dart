import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/navigation/component/navigation_button.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(95, 59, 59, 59),
                  spreadRadius: 1,
                  blurRadius: 10),
            ],
          ),
          child: Container(
            decoration: const ShapeDecoration(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            height: 60,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(children: [
                    NavigationButton(
                      onPressed: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      icon: Icon(
                        Icons.home,
                        color:
                            index == 0 ? Colors.white : const Color(0xFF969696),
                        size: 34,
                      ),
                    ),
                  ]),
                ),
                Flexible(
                  flex: 1,
                  child: Row(children: [
                    NavigationButton(
                      onPressed: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      icon: Icon(
                        Icons.playlist_add_check_outlined,
                        color:
                            index == 0 ? Colors.white : const Color(0xFF969696),
                        size: 34,
                      ),
                    ),
                  ]),
                ),
                Flexible(
                  flex: 1,
                  child: Row(children: [
                    NavigationButton(
                      onPressed: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      icon: Icon(
                        Icons.file_copy_outlined,
                        color:
                            index == 0 ? Colors.white : const Color(0xFF969696),
                        size: 34,
                      ),
                    ),
                  ]),
                ),
                Flexible(
                  flex: 1,
                  child: Row(children: [
                    NavigationButton(
                      onPressed: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      icon: Icon(
                        Icons.person_rounded,
                        color:
                            index == 0 ? Colors.white : const Color(0xFF969696),
                        size: 36,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
