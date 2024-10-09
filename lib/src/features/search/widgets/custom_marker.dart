import 'package:flutter/material.dart';
import 'package:real_estate_app/src/core/app_colors.dart';

class CustomMarker extends StatefulWidget {
  const CustomMarker({super.key, required this.title});

  final String title;

  @override
  State<StatefulWidget> createState() => _CustomMarkerState();
}

class _CustomMarkerState extends State<CustomMarker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomRight: Radius.circular(
            10,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 20,
        ),
        child: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
