import 'package:flutter/material.dart';
import 'package:quotesunnah/app/config/themes/app_color.dart';
import 'package:quotesunnah/app/config/themes/app_text_style.dart';
import 'package:quotesunnah/app/constant/app_constants.dart';
import 'package:quotesunnah/app/features/shared_components/header/icon_notif_header.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text(
              AppConstant.appName,
              style: AppFont.fontBrand.copyWith(
                color: AppColor.colorBrand,
                fontSize: AppTextSize.brand,
              ),
            ),
          ),
          const IconNotifHeader(),
        ],
      ),
    );
  }
}
