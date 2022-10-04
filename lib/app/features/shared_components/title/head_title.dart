import 'package:flutter/material.dart';

class HeadTitle extends StatelessWidget {
  const HeadTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: 8,
          decoration: BoxDecoration(
            color: Colors.green.shade400,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
