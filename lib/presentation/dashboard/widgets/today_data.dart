import 'package:diet/common/style/app_colors.dart';
import 'package:diet/presentation/dashboard/widgets/progress_widget.dart';
import 'package:diet/presentation/dashboard/widgets/text_and_value.dart';
import 'package:flutter/material.dart';

class TodayData extends StatelessWidget {
  const TodayData({super.key});

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
                    TextAndValue(heading: 'Exercise', value: "2000"),
                    SizedBox(height: 10),
                    TextAndValue(heading: 'Steps', value: "5000"),
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
                      value: '4,000',
                      progress: 0.5,
                      leftOver: '6,000\nleft',
                    ),
                    SizedBox(height: 70),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    TextAndValue(heading: 'Breakfast', value: "1200"),
                    SizedBox(height: 10),
                    TextAndValue(heading: 'Lunch', value: "2800"),
                    SizedBox(height: 10),
                    TextAndValue(heading: 'Dinner', value: "0"),
                    SizedBox(height: 10),
                    TextAndValue(heading: 'Snacks', value: "0"),
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
