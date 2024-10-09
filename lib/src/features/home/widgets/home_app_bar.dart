import 'package:flutter/material.dart';
import 'package:real_estate_app/gen/assets.gen.dart';
import 'package:real_estate_app/src/core/app_colors.dart';
import 'package:real_estate_app/src/core/widgets/app_text.dart';
import 'package:real_estate_app/src/features/home/widgets/animated_count.dart';
import 'package:real_estate_app/src/features/home/widgets/fade_in_box.dart';
import 'package:real_estate_app/src/features/home/widgets/slide_in_box.dart';
import 'package:real_estate_app/src/features/home/widgets/slide_up_text.dart';
import 'package:real_estate_app/src/features/home/widgets/zoom_in_box.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SlideInBox(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(
                            0.1,
                          ),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: FadeInBox(
                      child: Row(
                        children: [
                          Assets.svgs.location.svg(
                            width: 18,
                            height: 18,
                            color: AppColors.bodyTextColor,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          const AppText.b1(
                            content: 'Saint Petersburg',
                            fontSize: 14,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //
                //
                ZoomInBox(
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: const [0.2, 0.6],
                        colors: [
                          const Color(0xffd97805),
                          AppColors.primaryColor
                        ],
                      ),
                    ),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // Image radius
                        child: Assets.images.profileAvatar.image(
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 38,
            ),
            const FadeInBox(
              child: AppText.b1(
                content: 'Hi, Marina',
              ),
            ),
            const SlideUpText(
              child: AppText.h1(
                content: "let's select",
              ),
            ),
            const SlideUpText(
              child: AppText.h1(
                content: "your perfect place",
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ZoomInBox(
                    child: Container(
                      width: (size.width - 60) / 2,
                      height: (size.width - 60) / 2,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        shape: BoxShape.circle,
                      ),
                      child: const Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: AppText.b1(
                                content: 'BUY',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          //Spacer(),
                          Positioned.fill(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnimatedCounter(
                                    count: 1034,
                                    textColor: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  AppText.b1(
                                    content: 'offers',
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ZoomInBox(
                    child: Container(
                      width: (size.width - 70) / 2,
                      height: (size.width - 70) / 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(
                              0.1,
                            ),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: const Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: 25,
                              ),
                              child: AppText.b1(
                                content: 'RENT',
                              ),
                            ),
                          ),
                          Positioned.fill(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnimatedCounter(
                                    count: 2112,
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  AppText.b1(
                                    content: 'offers',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
