import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/widgets/app_text.dart';

class AnimatedCounter extends StatefulWidget {
  final int count;
  final Color? textColor;
  const AnimatedCounter({
    super.key,
    required this.count,
    this.textColor,
  });

  @override
  State<AnimatedCounter> createState() => _AnimatedCounterState();
}

class _AnimatedCounterState extends State<AnimatedCounter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<int> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _animation = IntTween(begin: 0, end: widget.count).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AppText.b1(
      color: widget.textColor,
      content: _animation.value.toString(),
      fontSize: 34,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
