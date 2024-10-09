import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_app/src/core/app_colors.dart';
import 'package:real_estate_app/src/features/tab_view/models/bottom_nav_bar_model.dart';

class BottomNavItem extends StatelessWidget {
  final int currentIndex;
  final BottomNavBarModel bottomNavBarModel;
  final Function(int index) onNavItemTap;
  const BottomNavItem({
    super.key,
    required this.bottomNavBarModel,
    required this.currentIndex,
    required this.onNavItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = (currentIndex == bottomNavBarModel.index);
    return GestureDetector(
      onTap: () {
        onNavItemTap(bottomNavBarModel.index);
      },
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? AppColors.primaryColor : Colors.transparent,
        ),
        child: Center(
          child: SvgPicture.asset(
            bottomNavBarModel.iconPath,
            colorFilter: const ColorFilter.mode(
              Colors.white,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
