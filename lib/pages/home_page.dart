import 'package:crypto_glass_app/tabs/recent.dart';
import 'package:crypto_glass_app/tabs/top.dart';
import 'package:crypto_glass_app/tabs/trending.dart';
import 'package:crypto_glass_app/util/glass_box.dart';
import 'package:crypto_glass_app/widgets/search_nav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // tab options
  final List tabOption = [
    [const RecentTab()],
    [const TrendingTab()],
    [const TopTab()],
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOption.length,
      child: Scaffold(
          extendBody: true,
          body: const SafeArea(
            child: Column(
              children: [
                SearchNav(),
                TabBar(
                  // indicatorSize: TabBarIndicatorSize.tab,
                  automaticIndicatorColorAdjustment: true,
                  labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.normal, fontFamily: 'Quicksand'),
                  unselectedLabelStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.normal, fontFamily: 'Quicksand'),
                  tabs: [
                    Tab(text: "Recent"),
                    Tab(text: "Trending"),
                    Tab(text: "Top"),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      RecentTab(),
                      TrendingTab(),
                      TopTab(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: GlassBox(
                child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  selectedItemColor: Colors.white,
                  unselectedItemColor: Colors.grey[300],
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.favorite),
                      label: "Favorites",
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: "Profile",
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
