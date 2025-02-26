import 'package:flutter/material.dart';

import '../utils /color.dart';
import '../utils /size.dart';
import '../utils /theme.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder =
        OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent));
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: GColors.primary,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: GColors.primary.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 7,
              offset: const Offset(5, 5),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(GSize.borderRadiusLg),
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: "Search Your Favrouite foods",
            hintStyle: regular.copyWith(
                fontSize: GSize.fontSizeSm, color: GColors.primary),
            prefixIcon: const Icon(Icons.search),
            prefixIconColor: GColors.primary,
            enabledBorder: outlineInputBorder,
            border: outlineInputBorder,
            focusedBorder: outlineInputBorder,
          ),
        ),
      ),
    );
  }
}
