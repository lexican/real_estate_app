import 'package:real_estate_app/gen/assets.gen.dart';
import 'package:real_estate_app/src/features/tab_view/models/bottom_nav_bar_model.dart';

List<BottomNavBarModel> navItems = [
  BottomNavBarModel(
    index: 0,
    iconPath: Assets.svgs.searchFilled.path,
  ),
  BottomNavBarModel(
    index: 1,
    iconPath: Assets.svgs.message.path,
  ),
  BottomNavBarModel(
    index: 2,
    iconPath: Assets.svgs.home.path,
  ),
  BottomNavBarModel(
    index: 3,
    iconPath: Assets.svgs.favorite.path,
  ),
  BottomNavBarModel(
    index: 4,
    iconPath: Assets.svgs.user.path,
  ),
];
