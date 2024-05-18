import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/svg_path.dart';
import 'package:diet/presentation/dashboard/widgets/icon_and_text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
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
                  path: SvgPath.manage,
                  text: 'Manage my foods',
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                IconAndText(
                  path: SvgPath.web,
                  text: 'Reciepe Import',
                  subtitle: 'Import Reciepe from web',
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                IconAndText(
                  path: SvgPath.reciepeDatabase,
                  text: 'Reciepe Database',
                  subtitle: 'Search from more than 10,000 reciepes',
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ],
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
                  path: SvgPath.weightPlan,
                  text: 'My weight, goal & plan',
                  subtitle: 'Weight, calories and nutrients',
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                IconAndText(
                  path: SvgPath.personalInfo,
                  text: 'Personal Info',
                  subtitle: 'DOB, activity and more',
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                IconAndText(
                  path: SvgPath.reports,
                  text: 'Reports',
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ],
            ),
          ),
          const IconAndText(
            path: SvgPath.devices,
            text: 'Devices',
            subtitle: 'Link your fitness devices',
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
                  path: SvgPath.createAcc,
                  text: 'Create Account',
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
                IconAndText(
                  path: SvgPath.signIn,
                  text: 'Sign In',
                  padding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ],
            ),
          ),
          const IconAndText(
            path: SvgPath.settings,
            text: 'App Settings',
          ),
          const IconAndText(
            path: SvgPath.support,
            text: 'Support & FAQs',
          ),
        ],
      ),
    );
  }
}
