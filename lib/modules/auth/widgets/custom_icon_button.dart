import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.isPrimary = false,
  });
  
  final IconData icon;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isPrimary ? kPrimaryColor : kTransparentColor,
        border: Border.all(
          color: isPrimary ? kPrimaryColor : kWhiteColor.withOpacity(0.5),
        ),
      ),
      child: Icon(
        icon,
        color: isPrimary ? kBackGroundColor : kWhiteColor.withOpacity(0.5),
      ),
    );
  }
}
