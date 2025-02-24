import 'package:flutter/material.dart';

import '../utils /color.dart';
import '../utils /theme.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const MyButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 55,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: GColors.primary,
                  boxShadow: [
                    BoxShadow(
                      color: GColors.darkerGrey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: const Offset(5, 5),
                    )
                  ]),
              child: Center(
                child: Text(
                  title,
                  style: semibold.copyWith(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
