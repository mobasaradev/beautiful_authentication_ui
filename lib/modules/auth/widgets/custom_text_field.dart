import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.icon,
    required this.hintText,
    required this.keyboardType,
  });

  final IconData icon;
  final String hintText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(
            icon,
            color: kWhiteColor.withOpacity(0.5),
          ),
        ),
        Expanded(
          child: TextField(
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hintText,
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kPrimaryColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
