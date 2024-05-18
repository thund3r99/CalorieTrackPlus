import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:diet/presentation/community/widgets/home_community_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tab;
  @override
  void initState() {
    super.initState();
    _tab = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    _tab.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        TabBar(
          controller: _tab,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(50), // Creates border
            color: AppColors.tabBackground,
          ),
          indicatorColor: AppColors.tabBackground,
          indicatorPadding: const EdgeInsets.all(4),
          labelStyle: GoogleFonts.inter(color: AppColors.primaryWhite),
          tabs: [
            interText(
              text: "Home",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            interText(
              text: "Groups",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            interText(
              text: "Friends",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            interText(
              text: "Chat",
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
        Flexible(
          child: TabBarView(
            controller: _tab,
            children: const [
              Padding(
                padding: EdgeInsets.all(20),
                child: HomeCommunityWidgets(),
              ),
              SizedBox(),
              SizedBox(),
              SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
