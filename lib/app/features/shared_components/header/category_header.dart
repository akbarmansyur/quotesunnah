import 'package:flutter/material.dart';
import 'package:quotesunnah/app/config/themes/app_color.dart';
import 'package:quotesunnah/app/config/themes/app_text_style.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    Key? key,
    required this.labelCategory,
    required this.onTap,
    required this.selectedIndex,
  }) : super(key: key);

  final List<String> labelCategory;
  final Function(int index) onTap;
  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: labelCategory.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onTap(index);
            },
            child: Container(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    labelCategory[index],
                    style: AppFont.font2.copyWith(
                      fontWeight: FontWeight.w600,
                      color: selectedIndex == index
                          ? AppColor.secondary3
                          : AppColor.secondary1,
                      fontSize: 12,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 50,
                    decoration: BoxDecoration(
                      color: selectedIndex == index
                          ? AppColor.secondary4
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
