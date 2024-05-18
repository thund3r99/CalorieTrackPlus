import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:diet/presentation/under_construction/under_construction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconAndText extends StatelessWidget {
  final String path;
  final String text;
  final String? subtitle;
  final EdgeInsetsGeometry? padding;
  const IconAndText({
    super.key,
    required this.path,
    required this.text,
    this.subtitle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return NavigateToUC(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        padding:
            padding ?? const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        margin: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 20,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              path,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  interText(
                    text: text,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (subtitle != null)
                    interText(
                      text: subtitle!,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
