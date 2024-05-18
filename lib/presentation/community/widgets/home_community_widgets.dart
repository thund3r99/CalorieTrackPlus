import 'package:diet/common/style/svg_path.dart';
import 'package:diet/presentation/community/widgets/community_post.dart';
import 'package:diet/presentation/dashboard/widgets/icon_and_text_widget.dart';
import 'package:flutter/material.dart';

class HomeCommunityWidgets extends StatelessWidget {
  const HomeCommunityWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Image.asset(SvgPath.user1),
              ),
              const Expanded(
                child: IconAndText(
                  path: SvgPath.calendars,
                  text: 'How is your journey?',
                ),
              )
            ],
          ),
          const SizedBox(height: 15),
          const CommunityPost(
            userName: 'Alice',
            photo: SvgPath.user2,
            content:
                'Just finished a 5k run! Burned 300 calories. Feeling great! 🏃‍♀️🔥',
            comment: "Impressive! Keep up the good work! 💪",
            commentImg: SvgPath.user3,
            like: "4",
            commentCount: "3",
          ),
          const SizedBox(height: 15),
          const CommunityPost(
            userName: 'Bob',
            photo: SvgPath.user1,
            content:
                'Just hit my daily calorie goal! Ate a healthy salad for lunch. 🥗',
            comment: "Salads are the best! 🥦",
            commentImg: SvgPath.user3,
            contentPhoto: SvgPath.food,
            like: "6",
            commentCount: "2",
          )
        ],
      ),
    );
  }
}
