import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/app_colors.dart';
import 'package:real_estate_app/src/features/home/home.dart';
import 'package:real_estate_app/src/features/tab_view/data/data.dart';
import 'package:real_estate_app/src/features/tab_view/widgets/bottom_nav_item.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  int _currentIndex = 2;

  final List<Widget> _screens = const [
    SizedBox(),
    SizedBox(),
    Home(),
    SizedBox(),
    SizedBox()
  ];

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    Future.delayed(const Duration(milliseconds: 5000), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor.withOpacity(
        0.9,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFFEDEADE),
              AppColors.primaryColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [
              0.2,
              0.9,
            ],
          ),
        ),
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned.fill(
              child: _screens[_currentIndex],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SlideTransition(
                position: _slideAnimation,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 60,
                    right: 60,
                    bottom: 30,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 0,
                    vertical: 5,
                  ),
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColors.appBlackColor,
                    borderRadius: BorderRadius.circular(
                      45,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...navItems.map(
                        (navItem) => BottomNavItem(
                          bottomNavBarModel: navItem,
                          currentIndex: _currentIndex,
                          onNavItemTap: (navItemIndex) {
                            setState(() {
                              _currentIndex = navItemIndex;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
