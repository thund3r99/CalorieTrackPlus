import 'package:diet/common/style/app_colors.dart';
import 'package:diet/presentation/dashboard/widgets/progress_widget.dart';
import 'package:diet/presentation/dashboard/widgets/text_and_value.dart';
import 'package:flutter/material.dart';

class YesterdayData extends StatelessWidget {
  const YesterdayData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: const Column(
        children: [
          Center(
              child: TextAndValue(heading: 'Daily Calorie', value: "10,000")),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    TextAndValue(heading: 'Exercise', value: "1000"),
                    SizedBox(height: 10),
                    TextAndValue(heading: 'Steps', value: "2000"),
                    SizedBox(height: 10),
                    TextAndValue(heading: 'Water', value: "1000"),
                    SizedBox(height: 80),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ProgressWidget(
                      value: '11,000',
                      progress: 0.5,
                      leftOver: '1000\nOver',
                      isOver: true,
                    ),
                    SizedBox(height: 70),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    TextAndValue(heading: 'Breakfast', value: "2500"),
                    SizedBox(height: 10),
                    TextAndValue(heading: 'Lunch', value: "5600"),
                    SizedBox(height: 10),
                    TextAndValue(heading: 'Dinner', value: "2000"),
                    SizedBox(height: 10),
                    TextAndValue(heading: 'Snacks', value: "200"),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
