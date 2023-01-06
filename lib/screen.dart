import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  List<String> images = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/3.png",
    "assets/images/4.png",
    "assets/images/5.png",
    "assets/images/6.png",
    "assets/images/7.png",
    "assets/images/8.png",
    "assets/images/9.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 320,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(13),
                  topRight: Radius.circular(13),
                  bottomLeft: Radius.circular(13),
                  bottomRight: Radius.circular(13),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0, 4), // Shadow position
                  )
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.arrow_back_ios_new_rounded),
                        Text(
                          'shreshtha12V',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            shadows: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 8,
                                offset: Offset(0, 4), // Shadow position
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.more_vert_rounded),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Text(
                            '45.8k',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Followers',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset(
                        'assets/images/dp.png',
                        width: 70,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: const [
                          Text(
                            '2000',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Following',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Shreshta Verma',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Experience,Tourism.\n These are as education in themselves',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'www.google.com',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 326,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      //
                      color: Color.fromRGBO(100, 225, 220, 0.699999988079071),
                      border: Border.all(
                        color: Color.fromRGBO(165, 176, 194, 1),
                        width: 0.5,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      child: Text(
                        'Following',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black54,
                indicatorColor: Colors.grey,
                indicatorWeight: 4,
                tabs: [
                  const Tab(
                    icon: Icon(
                      Icons.grid_view_rounded,
                      size: 26,
                    ),
                  ),
                  Tab(
                    icon: Image.asset(
                      'assets/images/secondtab.jpg',
                      height: 20,
                    ),
                  ),
                  Tab(
                    icon: Image.asset(
                      'assets/images/thirdtab.jpg',
                      height: 22,
                    ),
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    // width: 122,
                    // height: 136,
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: images.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Image.asset(images[index]);
                      },
                    ),
                  ),
                  Text(' I AM SECOND TAB'),
                  Text(' I AM THIRD TAB'),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Image.asset(
            'assets/images/home.jpg',
            height: 25,
          ),
          Image.asset(
            'assets/images/bookmark.jpg',
            height: 25,
          ),
          Image.asset(
            'assets/images/add.png',
            height: 25,
          ),
          Image.asset(
            'assets/images/search.jpg',
            height: 25,
          ),
          Image.asset(
            'assets/images/logo.png',
            height: 25,
          ),
        ],
        backgroundColor: Colors.transparent,
        height: 60,
      ),
      extendBody: true,
    );
  }
}
