import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:diet/common/style/svg_path.dart';
import 'package:diet/presentation/dashboard/widgets/icon_and_text_widget.dart';
import 'package:diet/presentation/dashboard/widgets/today_data.dart';
import 'package:diet/presentation/dashboard/widgets/tommorow_data.dart';
import 'package:diet/presentation/dashboard/widgets/yesterday_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String data = 'today';
  String heading = "Today";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: AppColors.secondaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    DateTime today = DateTime.now();
                    setState(() {
                      if (data == 'today') {
                        data = 'yesterday';
                        heading = DateFormat('EEE MMM d').format(
                          today.subtract(
                            const Duration(days: 1),
                          ),
                        );
                      } else if (data == 'tommorow') {
                        data = 'today';
                        heading = 'Today';
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 28,
                  ),
                ),
                interText(
                  text: heading,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    DateTime today = DateTime.now();
                    setState(() {
                      if (data == 'today') {
                        data = 'tommorow';
                        heading = DateFormat('EEE MMM d').format(
                          today.add(
                            const Duration(days: 1),
                          ),
                        );
                      } else if (data == 'yesterday') {
                        data = 'today';
                        heading = 'Today';
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
          data == 'today'
              ? const TodayData()
              : data == 'tommorow'
                  ? const TommorowData()
                  : const YesterdayData(),
          const IconAndText(
            path: SvgPath.analysis,
            text: 'My Analysis',
          ),
          const IconAndText(
            path: SvgPath.weight,
            text: 'Weigh In',
          ),
          const IconAndText(
            path: SvgPath.goal,
            text: 'My weight goal & plan',
          )
        ],
      ),
    );
  }
}
