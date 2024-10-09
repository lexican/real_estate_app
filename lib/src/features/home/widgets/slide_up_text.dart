import 'package:flutter/material.dart';
import 'package:real_estate_app/src/features/home/widgets/fade_in_box.dart';

class SlideUpText extends StatefulWidget {
  final Widget child;
  const SlideUpText({
    super.key,
    required this.child,
  });

  @override
  State<SlideUpText> createState() => _SlideUpTextState();
}

class _SlideUpTextState extends State<SlideUpText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation =
        Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation, // Position of the text as it slides up
      child: FadeInBox(
        child: widget.child,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
