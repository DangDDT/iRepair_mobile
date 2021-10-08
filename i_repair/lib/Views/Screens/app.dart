import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/cupertino.dart.';
import 'package:i_repair/Models/Constants/constants.dart';
import 'package:i_repair/Models/User/user.dart';
import 'package:i_repair/Views/Screens/Client/Explore/explore.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Client/Home/home_screen.dart';
import 'Client/Profile/profile.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  CurrentUser? currentUser;
  @override
  void initState() {
    _pageController.addListener(() {
      if (_pageController.page!.round() != _selectedIndex) {
        setState(() {
          _selectedIndex = _pageController.page!.round();
        });
      }
    });
    getCurrentUser();
    super.initState();
  }

  getCurrentUser() async {
    final prefs = await SharedPreferences.getInstance();
    final currentUserString = prefs.getString('currentUser') ?? null;
    setState(() {
      currentUser = userFromJson(currentUserString!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: BaseAppBar(
      //     key: null,
      //     appBar: AppBar(),
      //     title: 'Xin chào, Đỗ Dương Tâm Đăng',
      //     content: 'Sky 9, Liên Phường, Phú Hữu, Thủ Đức, TPHCM',
      //     haveBackSpace: false),
      body: PageView(
        controller: _pageController,
        children: [
          (currentUser == null)
              ? CircularProgressIndicator()
              : HomeScreen(user: currentUser),
          ExploreScreen(),
          ProfileScreen(user: currentUser)
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: kBackgroundColor,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.black,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: kPrimaryLightColor,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: CupertinoIcons.home,
                  text: 'Trang chủ',
                ),
                GButton(
                  icon: Icons.explore,
                  text: 'Khám phá',
                ),
                GButton(
                  icon: CupertinoIcons.profile_circled,
                  text: 'Thông tin',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (page) {
                if (page != _selectedIndex) {
                  setState(() {
                    _selectedIndex = page;
                    _pageController.jumpToPage(
                      page,
                    );
                  });
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
