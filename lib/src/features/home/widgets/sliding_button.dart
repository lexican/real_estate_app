import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/widgets/app_text.dart';
import 'package:real_estate_app/src/features/home/widgets/zoom_in_box.dart';

class SlidingButton extends StatefulWidget {
  const SlidingButton(
      {super.key, required this.address, required this.alignment});

  final String address;
  final AlignmentGeometry alignment;

  @override
  State<SlidingButton> createState() => _SlidingButtonState();
}

class _SlidingButtonState extends State<SlidingButton> {
  bool _animateButton = false;
  bool _animateAddress = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(milliseconds: 2400));
      if (mounted) {
        setState(() {
          _animateButton = true;
        });
      }
      await Future.delayed(const Duration(milliseconds: 400));
      if (mounted) {
        setState(() {
          _animateAddress = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ZoomInBox(
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 2000),
            height: 40,
            width: _animateButton ? constraints.maxWidth : 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              color: const Color(0xffa5957d).withOpacity(0.3),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 28, sigmaY: 28),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Stack(
                      children: [
                        Container(
                          alignment: widget.alignment,
                          child: AnimatedOpacity(
                            opacity: _animateAddress ? 1 : 0,
                            duration: const Duration(milliseconds: 3000),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: AppText.h1(
                                content: widget.address,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          right: _animateButton ? 4 : constraints.maxWidth - 40,
                          duration: const Duration(milliseconds: 400),
                          child: Container(
                            padding: const EdgeInsets.only(right: 1, top: 2),
                            child: const CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.keyboard_arrow_right_sharp,
                                color: Colors.grey,
                                size: 24,
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
