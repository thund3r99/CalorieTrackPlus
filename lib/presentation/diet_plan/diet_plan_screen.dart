import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:diet/common/style/svg_path.dart';
import 'package:diet/presentation/dashboard/widgets/icon_and_text_widget.dart';
import 'package:flutter/material.dart';

class DietPlanScreen extends StatelessWidget {
  const DietPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const IconAndText(
            path: SvgPath.fire,
            text: 'My Diet',
            subtitle: 'Find a diets that fits for you',
          ),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
            child: const Column(
              children: [
                IconAndText(
                  path: SvgPath.reciepe,
                  text: 'Reciepe & meals',
                  subtitle: 'Crafted by our dietitians',
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                ),
                IconAndText(
                  path: SvgPath.menus,
                  text: 'Menus',
                  subtitle: 'Nutritions meals ideas from dietitians',
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                ),
                IconAndText(
                  path: SvgPath.meal,
                  text: 'Meal Planner',
                  subtitle: "Plan your weak's meals",
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 24,
            ),
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              SvgPath.food,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
            child: interText(
              text: "Analysis and Insights",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
            child: const Column(
              children: [
                IconAndText(
                  path: SvgPath.nutrients,
                  text: 'Nutrient Analysis',
                  subtitle: 'In-depth analysis of meals',
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                ),
                IconAndText(
                  path: SvgPath.charts,
                  text: 'Charts',
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                ),
                IconAndText(
                  path: SvgPath.calendars,
                  text: 'Weekly averages',
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
