import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtheventorganizer/screens/events.dart';
import 'package:youtheventorganizer/screens/user.dart';
import 'package:youtheventorganizer/screens/package.dart';
import 'package:youtheventorganizer/screens/offer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Screens selected = Screens.homePage;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        bottom: PreferredSize(
          preferredSize: Size.zero,
          child: Divider(
            color: Colors.black,
            thickness: 0.06,
          ),
        ),
        leadingWidth: 70,
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 0, top: 12),
          child: Text(
            'Khushiyan baanten',
            style: GoogleFonts.oswald(
              textStyle: TextStyle(
                fontSize: 20.0,
                color: Color(0xffCB3F98),
              ),
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8, top: 5),
          child: Image(
            fit: BoxFit.contain,
            image: AssetImage('assets/images/logo.png'),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 10),
            child: InkWell(
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Color(0xffCB3F98),
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: screens[selectedIndex],
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(
              color: Colors.black,
              thickness: 0.06,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 10, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          selectedIndex == 0
                              ? Icons.home_sharp
                              : Icons.home_outlined,
                          size: 25,
                          color: Color(0xffCB3F98),
                        ),
                        selectedIndex == 0
                            ? Icon(
                                Icons.circle,
                                color: Color(0xffCB3F98),
                                size: 8,
                              )
                            : Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 8,
                              ),
                      ],
                    ),
                    // 1. navigate to home page:
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                  ),
                  InkWell(
                      child: Column(
                        children: [
                          Icon(
                            selectedIndex == 1
                                ? Icons.event_rounded
                                : Icons.event_outlined,
                            size: 23,
                            color: Color(0xffCB3F98),
                          ),
                          selectedIndex == 1
                              ? Icon(
                                  Icons.circle,
                                  color: Color(0xffCB3F98),
                                  size: 8,
                                )
                              : Icon(
                                  Icons.circle,
                                  color: Colors.white,
                                  size: 8,
                                ),
                        ],
                      ),
                      // 2. navigate to events page:
                      onTap: () {
                        setState(() {
                          selectedIndex = 1;
                        });
                      }),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          selectedIndex == 2
                              ? Icons.party_mode
                              : Icons.party_mode_outlined,
                          size: 23,
                          color: Color(0xffCB3F98),
                        ),
                        selectedIndex == 2
                            ? Icon(
                                Icons.circle,
                                color: Color(0xffCB3F98),
                                size: 8,
                              )
                            : Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 8,
                              ),
                      ],
                    ),
                    // 3. navigate to packages page:
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          selectedIndex == 3
                              ? Icons.local_offer
                              : Icons.local_offer_outlined,
                          size: 25,
                          color: Color(0xffCB3F98),
                        ),
                        selectedIndex == 3
                            ? Icon(
                                Icons.circle,
                                color: Color(0xffCB3F98),
                                size: 8,
                              )
                            : Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 8,
                              ),
                      ],
                    ),
                    // 4. navigate to offer page:
                    onTap: () {
                      setState(() {
                        selectedIndex = 3;
                      });
                    },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          selectedIndex == 4
                              ? Icons.person
                              : Icons.person_outline,
                          size: 26,
                          color: Color(0xffCB3F98),
                        ),
                        selectedIndex == 4
                            ? Icon(
                                Icons.circle,
                                color: Color(0xffCB3F98),
                                size: 8,
                              )
                            : Icon(
                                Icons.circle,
                                color: Colors.white,
                                size: 8,
                              ),
                      ],
                    ),
                    // 5. navigate to user page:
                    onTap: () {
                      setState(() {
                        selectedIndex = 4;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Home',
          style: TextStyle(
            fontSize: 100,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

List<Widget> screens = [
  HomePage(),
  Event(),
  Package(),
  Offer(),
  User(),
];

enum Screens {
  homePage,
  user,
  event,
  offer,
  package,
}
