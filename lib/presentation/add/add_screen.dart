import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/svg_path.dart';
import 'package:diet/presentation/add/widgets/search_food_screen.dart';
import 'package:diet/presentation/add/widgets/water_consumed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: AppColors.primaryColor,
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: const SearchFood(),
                    );
                  });
            },
            child: SvgPicture.asset(SvgPath.launch),
          ),
          Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: AppColors.primaryColor,
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: const SearchFood(),
                        );
                      });
                },
                child: SvgPicture.asset(SvgPath.breakfast),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: AppColors.primaryColor,
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: const SearchFood(),
                        );
                      });
                },
                child: SvgPicture.asset(SvgPath.dinner),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: AppColors.primaryColor,
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: const WaterConsumed(),
                        );
                      });
                },
                child: SvgPicture.asset(SvgPath.water),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      backgroundColor: AppColors.primaryColor,
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: const SearchFood(),
                        );
                      });
                },
                child: SvgPicture.asset(SvgPath.snack),
              ),
              const Spacer()
            ],
          ),
          const SizedBox(height: 120),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Padding(
          padding: EdgeInsets.only(bottom: 4.0),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.primaryGreen,
            child: Center(
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
