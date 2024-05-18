import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:flutter/material.dart';

class ProgressWidget extends StatelessWidget {
  final double progress;
  final String value;
  final String leftOver;
  final bool isOver;
  const ProgressWidget({
    super.key,
    required this.value,
    required this.progress,
    required this.leftOver,
    this.isOver = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 140,
          width: 140,
          child: CircularProgressIndicator(
            value: progress,
            strokeWidth: 12,
            color: AppColors.primaryGreen,
            backgroundColor: AppColors.background,
          ),
        ),
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              interText(
                  text: value,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryGreen,
                  )),
              const SizedBox(height: 4),
              interText(
                text: leftOver,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: isOver ? AppColors.primaryRed : null,
                ),
                align: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
