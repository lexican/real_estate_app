import 'package:flutter/material.dart';

class SlideInBox extends StatefulWidget {
  final Widget child;
  const SlideInBox({
    super.key,
    required this.child,
  });

  @override
  State<SlideInBox> createState() => _SlideInBoxState();
}

class _SlideInBoxState extends State<SlideInBox>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        12,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        widthFactor: _animation.value,
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
