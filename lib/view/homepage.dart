import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unibit/style/textstyle.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double? contHeight;
  double? contWidth;
  List<double> pos = [60, 30, 0];
  int pageIndex = 0;
  bool click = false;
  final items = [
    Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Icon(
        Icons.headphones,
        size: 25,
        color: Color(0xffCCCCCC),
      ),
    ),
    Icon(
      Icons.account_balance_wallet,
      size: 25,
      color: Color(0xffCCCCCC),
    ),
    Icon(
      Icons.add,
      size: 25,
      color: Color(0xffCCCCCC),
    ),
    Icon(
      Icons.share_outlined,
      size: 25,
      color: Color(0xffCCCCCC),
    ),
    Icon(
      Icons.person,
      size: 25,
      color: Color(0xffCCCCCC),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    contHeight = MediaQuery.of(context).size.height;
    contWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        items: items,
        color: Color(0xffFFFFFF),
        buttonBackgroundColor: Color(0xff0052BE),
        backgroundColor: Color(0xffF7F7FA),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 400),
        onTap: (index) {
          setState(() {
            // _pageIndex = index;
            click = true;
          });
        },
        letIndexChange: (index) => true,
      ),
      appBar: AppBar(
        toolbarHeight: 95,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Image(image: AssetImage("asset/logo.png")),
                  )),
              Image(
                image: AssetImage("asset/Notification.png"),
                height: 35,
                width: 35,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffF7F7FA),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,Dipak 👋",
                style: ThemeStyle.blacktext20,
              ),
              Container(
                height: 66,
                width: contWidth! - 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: const AssetImage("asset/two-dice 1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                margin: EdgeInsets.only(top: 20, bottom: 20),
                padding: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  "UNIBIT Fantasy is Live",
                  style: ThemeStyle.whitetext24,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("asset/Mask group (1).png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Play Ludo and Earn Money",
                        style: ThemeStyle.blacktext18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 180,
                            height: 50,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 80,
                                  padding: EdgeInsets.only(top: 5),
                                  child: Stack(
                                    children: const [
                                      Positioned(
                                        left: 40,
                                        top: -5,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Image(
                                              height: 30,
                                              width: 30,
                                              image: AssetImage(
                                                  "asset/Ellipse 2594.png")),
                                        ),
                                      ),
                                      Positioned(
                                        left: 20,
                                        height: 30,
                                        width: 30,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Image(
                                              image: AssetImage(
                                                  "asset/Ellipse 2593.png")),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        height: 30,
                                        width: 30,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Image(
                                              image: AssetImage(
                                                  "asset/Ellipse 2592.png")),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "500000+",
                                        style: ThemeStyle.blacktext11,
                                      ),
                                      Text(
                                        "players",
                                        style: ThemeStyle.blacktext11,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                        Container(
                          height: 40,
                          width: 134,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Color(0xffFFC004),
                                Color(0xffFF742F)
                              ],
                            ),
                            border: Border.all(
                              color: Colors.green,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(55),
                          ),
                          child: Center(
                            child: Text(
                              "Play now",
                              style: ThemeStyle.whitetext14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20),
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("asset/Mask group.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Play Cricket Fantasy League",
                        style: ThemeStyle.blacktext18,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            width: 180,
                            height: 50,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 80,
                                  padding: EdgeInsets.only(top: 5),
                                  child: Stack(
                                    children: const [
                                      Positioned(
                                        left: 40,
                                        top: -5,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Image(
                                              height: 30,
                                              width: 30,
                                              image: AssetImage(
                                                  "asset/Ellipse 2594.png")),
                                        ),
                                      ),
                                      Positioned(
                                        left: 20,
                                        height: 30,
                                        width: 30,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Image(
                                              image: AssetImage(
                                                  "asset/Ellipse 2593.png")),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        height: 30,
                                        width: 30,
                                        child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: Image(
                                              image: AssetImage(
                                                  "asset/Ellipse 2592.png")),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "500000+",
                                        style: ThemeStyle.blacktext11,
                                      ),
                                      Text(
                                        "players",
                                        style: ThemeStyle.blacktext11,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                        Container(
                          height: 40,
                          width: 134,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[
                                Color(0xffFFC004),
                                Color(0xffFF742F)
                              ],
                            ),
                            border: Border.all(
                              color: Colors.green,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(55),
                          ),
                          child: Center(
                            child: Text(
                              "Play now",
                              style: ThemeStyle.whitetext14,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
