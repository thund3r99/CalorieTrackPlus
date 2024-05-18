import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:diet/common/style/svg_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UnderConstructionScreen extends StatelessWidget {
  const UnderConstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(SvgPath.underConstruction),
          const SizedBox(height: 20),
          Center(
            child: interText(
                text: 'Under Construction',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                )),
          ),
          const SizedBox(height: 20),
          Center(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.secondaryColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: interText(
                  text: 'Go back',
                  style: const TextStyle(
                    color: AppColors.primaryWhite,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class NavigateToUC extends StatelessWidget {
  final Widget child;
  const NavigateToUC({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const UnderConstructionScreen();
          },
        ));
      },
      child: child,
    );
  }
}
