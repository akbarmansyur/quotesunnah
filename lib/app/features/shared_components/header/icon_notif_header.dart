import 'package:flutter/material.dart';
import 'package:quotesunnah/app/config/themes/app_color.dart';

class IconNotifHeader extends StatelessWidget {
  const IconNotifHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: InkWell(
            onTap: () {},
            child: Icon(
              Icons.notifications_outlined,
              color: AppColor.colorBrand,
              size: 20,
            ),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: InkWell(
            onTap: () {},
            child: Icon(
              Icons.search,
              color: AppColor.colorBrand,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}
