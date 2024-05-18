import 'package:diet/common/style/app_colors.dart';
import 'package:diet/common/style/extensions.dart';
import 'package:diet/common/style/inter_text.dart';
import 'package:diet/presentation/add/widgets/add_gram.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchFood extends StatefulWidget {
  const SearchFood({super.key});

  @override
  State<SearchFood> createState() => _SearchFoodState();
}

class _SearchFoodState extends State<SearchFood> {
  String query = '';
  List<String> allFoods = [
    "Chicken breast",
    "Chicken grilled",
    "Chicken roasted",
    "Chicken wings",
    "Chicken thigh",
    "Chicken leg",
    "Fried Chicken",
  ];

  List<String> getList() {
    if (query.isEmpty) return allFoods;
    var results = allFoods.whereOrNull(
            (p0) => p0.toLowerCase().contains(query.toLowerCase())) ??
        [];
    return results.toList();
  }

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
            const SizedBox(height: 10),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              clipBehavior: Clip.hardEdge,
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    query = value;
                  });
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: AppColors.secondaryColor,
                  hintText: "Search Foods",
                  prefixIcon: Icon(
                    CupertinoIcons.search,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: AppColors.secondaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: getList().isNotEmpty
                    ? getList()
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  backgroundColor: AppColors.primaryColor,
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (context) {
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          bottom: MediaQuery.of(context)
                                              .viewInsets
                                              .bottom),
                                      child: AddGramWidget(
                                        text: e,
                                      ),
                                    );
                                  });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: interText(
                                text: e,
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                        .toList()
                    : [
                        Center(
                          child: interText(text: 'Match not found.'),
                        )
                      ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
