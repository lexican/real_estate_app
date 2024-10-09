import 'package:flutter/material.dart';

class FadeInBox extends StatefulWidget {
  final Widget child;
  const FadeInBox({
    super.key,
    required this.child,
  });

  @override
  State<FadeInBox> createState() => _FadeInBoxState();
}

class _FadeInBoxState extends State<FadeInBox>
    with SingleTickerProviderStateMixin {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 1000), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: const Duration(seconds: 2),
      child: widget.child,
    );
  }
}
