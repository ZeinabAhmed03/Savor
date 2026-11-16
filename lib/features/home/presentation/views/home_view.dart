import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:savor/core/utils/app_assets.dart';
import 'package:savor/core/utils/app_colors.dart';
import 'package:savor/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  int _currentIndex = 0;
  String getGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good morning, What\'s cooking?';
    } else if (hour < 18) {
      return 'Good afternoon, What\'s cooking?';
    } else {
      return 'Good evening, What\'s cooking?';
    }
  }

  void navigateToSearch() {
    setState(() {
      _currentIndex = 1;
    });
  }

  late final _pages = [
    Center(child: HomeViewBody(onTap: navigateToSearch)),
    Center(child: Text('Search')),
    Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.mainColor,

        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house),
            activeIcon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            activeIcon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            activeIcon: Icon(CupertinoIcons.heart_fill),
            label: 'Favorite',
          ),
        ],
      ),

      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        leading: Image.asset(AppAssets.logo, height: 25, width: 25),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'savor',
              style: TextStyle(
                fontSize: 20,
                fontFamily: AppAssets.fontFamily,
                color: const Color(0xFF916C35),
              ),
            ),

            Text(
              getGreeting(),
              style: TextStyle(
                fontSize: 13,
                fontFamily: AppAssets.fontFamily,
                color: const Color(0xFF916C35),
              ),
            ),
          ],
        ),
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: IndexedStack(index: _currentIndex, children: _pages),
      ),
    );
  }
}
