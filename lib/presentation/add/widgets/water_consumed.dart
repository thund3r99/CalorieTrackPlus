import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:diet/common/style/svg_path.dart';
import 'package:diet/presentation/under_construction/under_construction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WaterConsumed extends StatelessWidget {
  const WaterConsumed({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
              ),
            ),
          ),
          const SizedBox(height: 10),
          interText(
            text: "Water Consumed",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigateToUC(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(SvgPath.halfGlass),
                      const SizedBox(height: 5),
                      interText(
                          text: "1/2 glass",
                          style: const TextStyle(fontSize: 14)),
                      interText(
                        text: "125 ml",
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(SvgPath.fullGlass),
                      const SizedBox(height: 5),
                      interText(
                          text: "Glass", style: const TextStyle(fontSize: 14)),
                      interText(
                        text: "250 ml",
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 10),
              NavigateToUC(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(SvgPath.bottle),
                      const SizedBox(height: 5),
                      interText(
                          text: "Bottle", style: const TextStyle(fontSize: 14)),
                      interText(
                        text: "500 ml",
                        style: const TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
