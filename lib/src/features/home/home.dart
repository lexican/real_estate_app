import 'package:flutter/material.dart';
import 'package:real_estate_app/src/features/home/widgets/home_app_bar.dart';
import 'package:real_estate_app/src/features/home/widgets/home_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext headerContext, bool boolean) {
        return [
          const SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 420,
            flexibleSpace: FlexibleSpaceBar(
              background: HomeAppBar(),
            ),
          )
        ];
      },
      body: const HomeBody(),
    );
  }
}
