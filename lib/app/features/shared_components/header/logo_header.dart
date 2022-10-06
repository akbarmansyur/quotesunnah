import 'package:flutter/material.dart';
import 'package:quotesunnah/app/constant/assets_path.dart';

class LogoHeader extends StatelessWidget {
  const LogoHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 5,
          bottom: 5,
        ),
        child: Container(
          height: 70,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetPath.logoPath),
            ),
          ),
        ),
      ),
    );
  }
}
