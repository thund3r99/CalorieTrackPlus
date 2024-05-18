import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommunityPost extends StatelessWidget {
  final String userName;
  final String photo;
  final String content;
  final String? contentPhoto;
  final String comment;
  final String commentImg;
  final String like;
  final String commentCount;
  const CommunityPost({
    super.key,
    required this.userName,
    required this.photo,
    required this.content,
    this.contentPhoto,
    required this.comment,
    required this.commentImg,
    required this.like,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.secondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Center(child: Image.asset(photo)),
              ),
              const SizedBox(width: 10),
              interText(
                  text: userName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              )
            ],
          ),
          const SizedBox(height: 10),
          interText(
            text: content,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),
          if (contentPhoto != null)
            Image.asset(
              contentPhoto!,
              fit: BoxFit.cover,
            ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    CupertinoIcons.hand_thumbsup,
                    size: 18,
                  ),
                  const SizedBox(width: 10),
                  interText(
                    text: like,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    CupertinoIcons.chat_bubble,
                    size: 18,
                  ),
                  const SizedBox(width: 10),
                  interText(
                    text: commentCount,
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                child: Center(child: Image.asset(commentImg)),
              ),
              const SizedBox(width: 10),
              interText(
                text: comment,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
