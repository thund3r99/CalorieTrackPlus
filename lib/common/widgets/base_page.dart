import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:diet/common/style/svg_path.dart';
import 'package:diet/presentation/add/add_screen.dart';
import 'package:diet/presentation/community/community_screen.dart';
import 'package:diet/presentation/dashboard/dashboard_screen.dart';
import 'package:diet/presentation/diet_plan/diet_plan_screen.dart';
import 'package:diet/presentation/profile/profile_screen.dart';
import 'package:diet/presentation/under_construction/under_construction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  final OverlayPortalController _overlay = OverlayPortalController();
  Map<String, Widget> pages = {
    "Dashboard": const DashboardScreen(),
    "Diet Plan": const DietPlanScreen(),
    "Community": const CommunityScreen(),
    "Profile": const ProfileScreen(),
  };
  String selectedPage = "Dashboard";
  int selectedIndex = 0;

  void getPageFromIndex(int index) {
    switch (index) {
      case 0:
        selectedPage = 'Dashboard';
        break;
      case 1:
        selectedPage = 'Diet Plan';
        break;
      case 3:
        selectedPage = 'Community';
        break;
      case 4:
        selectedPage = 'Profile';
        break;
      default:
        selectedPage = 'Dashboard';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          onPressed: _overlay.toggle,
          icon: OverlayPortal(
            controller: _overlay,
            child: const Icon(
              Icons.menu,
            ),
            overlayChildBuilder: (context) {
              return Positioned(
                top: 90,
                left: 40,
                child: Container(
                  height: 130,
                  width: 200,
                  decoration: const BoxDecoration(
                    color: Color(0xFF858080),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      NavigateToUC(
                        child: Row(
                          children: [
                            interText(
                              text: 'App Settings',
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.settings,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      NavigateToUC(
                        child: Row(
                          children: [
                            interText(
                              text: 'Support & FAQs',
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.help_outline,
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      NavigateToUC(
                        child: Row(
                          children: [
                            interText(
                              text: 'Share App',
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.ios_share,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        title: interText(
          text: selectedPage,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.secondaryColor,
        selectedItemColor: AppColors.primaryGreen,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            if (value != 2) {
              selectedIndex = value;
              getPageFromIndex(selectedIndex);
            } else {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const AddScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                ),
              );
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: SvgPicture.asset(SvgPath.dashboard),
            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: SvgPicture.asset(SvgPath.diet),
            ),
            label: 'Diet Plan',
          ),
          const BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 4.0),
              child: CircleAvatar(
                radius: 24,
                backgroundColor: AppColors.primaryGreen,
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: SvgPicture.asset(SvgPath.community),
            ),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4.0),
              child: SvgPicture.asset(SvgPath.profile),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () {
          _overlay.hide();
        },
        child: pages[selectedPage] ??
            Center(
              child: interText(
                text: selectedPage,
              ),
            ),
      ),
    );
  }
}
