import 'package:flutter/material.dart';
import 'package:quotesunnah/app/config/themes/app_color.dart';
import 'package:quotesunnah/app/features/shared_components/header/category_header.dart';
import 'package:quotesunnah/app/features/shared_components/header/logo_header.dart';
import 'package:quotesunnah/app/features/shared_components/header/title_header.dart';

class Header extends StatelessWidget {
  const Header(
      {super.key,
      required this.labelCategory,
      required this.selectedIndex,
      required this.onTap});
  final List<String> labelCategory;
  final int selectedIndex;
  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      height: 100,
      decoration: const BoxDecoration(
        color: AppColor.colorHeaders,
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 3,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const LogoHeader(),
          Flexible(
            flex: 6,
            child: Column(
              children: [
                const TitleHeader(),
                CategoryHeader(
                  labelCategory: labelCategory,
                  onTap: onTap,
                  selectedIndex: selectedIndex,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
