import 'package:flutter/material.dart';

import '../../components/my_button.dart';
import '../../components/my_textfield.dart';
import '../../utils /size.dart';
import '../../utils /texts_string.dart';
import '../../utils /theme.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(GSize.pagePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(GTexts.forgetPasswordTitle,
                style: semibold.copyWith(fontSize: 23)),
            const SizedBox(height: GSize.spaceBtwInputFields),
            Text(
              GTexts.forgetPasswordsubTitle,
              style: regular.copyWith(fontSize: 14, color: darkGrey),
            ),
            const SizedBox(
              height: GSize.spaceBtwSections,
            ),

            // Text filed email
            const MyTextFormField(
              title: GTexts.email,
              hinttext: 'Enter your email',
            ),

            const SizedBox(
              height: GSize.spaceBtwSections,
            ),

            // submit button
            SizedBox(
                width: double.infinity,
                child: MyButton(title: GTexts.submit, onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
