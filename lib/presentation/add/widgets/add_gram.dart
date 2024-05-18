import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:flutter/material.dart';

class AddGramWidget extends StatelessWidget {
  final String text;
  const AddGramWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.close,
                ),
              ),
            ),
            const SizedBox(height: 20),
            interText(
                text: text,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                )),
            Container(
              width: 150,
              decoration: const BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              clipBehavior: Clip.hardEdge,
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  border: const UnderlineInputBorder(),
                  fillColor: AppColors.secondaryColor,
                  hintText: "110",
                  suffixIcon: interText(
                    text: 'g',
                    style: const TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            interText(
              text: "0 KJ",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColors.primaryGreen,
              ),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: interText(
                  text: 'Add',
                  style: const TextStyle(
                    color: AppColors.primaryWhite,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
