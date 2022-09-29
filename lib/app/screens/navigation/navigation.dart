import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/screens/history_screen/history-screen.dart';
import 'package:flutter_application_1/app/screens/home_screen/home_admin/home_admin.dart';
import 'package:flutter_application_1/app/screens/home_screen/home_karyawan/home_karyawan.dart';
import 'package:flutter_application_1/app/screens/navigation/component/navigation_button.dart';
import 'package:flutter_application_1/app/utilities/colors.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  List pages = const [
    HomeKaryawan(),
    HistoryScreen(),
    HomeKaryawan(),
    HomeAdmin()
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          pages[index],
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: size.width,
              child: Padding(
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
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.1,
                        vertical: size.height * 0.015),
                    decoration: const ShapeDecoration(
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
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
                              icon: CircleAvatar(
                                maxRadius: 15,
                                backgroundColor:
                                    index == 0 ? primary300 : neutral800,
                                child: Icon(
                                  Icons.home,
                                  color: index == 0 ? neutral800 : neutral100,
                                  size: 24,
                                ),
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
                                  index = 1;
                                });
                              },
                              icon: CircleAvatar(
                                maxRadius: 15,
                                backgroundColor:
                                    index == 1 ? primary300 : neutral800,
                                child: Icon(
                                  Icons.playlist_add_check_outlined,
                                  color: index == 1 ? neutral800 : neutral100,
                                  size: 24,
                                ),
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
                                  index = 2;
                                });
                              },
                              icon: CircleAvatar(
                                maxRadius: 15,
                                backgroundColor:
                                    index == 2 ? primary200 : neutral800,
                                child: Icon(
                                  Icons.people,
                                  color: index == 2 ? neutral800 : neutral100,
                                  size: 24,
                                ),
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
                                  index = 3;
                                });
                              },
                              icon: CircleAvatar(
                                maxRadius: 15,
                                backgroundColor:
                                    index == 3 ? primary200 : neutral800,
                                child: Icon(
                                  Icons.person_rounded,
                                  color: index == 3 ? neutral800 : neutral100,
                                  size: 24,
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
