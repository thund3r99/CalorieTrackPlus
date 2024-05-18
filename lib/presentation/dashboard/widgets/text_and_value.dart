import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:flutter/material.dart';

class TextAndValue extends StatelessWidget {
  final String heading;
  final String value;
  const TextAndValue({super.key, required this.heading, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        interText(
          text: heading,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 4),
        interText(
          text: value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.highlight,
          ),
        )
      ],
    );
  }
}
