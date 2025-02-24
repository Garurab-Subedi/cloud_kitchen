import 'package:flutter/material.dart';
import 'package:khaja_pani/utils%20/theme.dart';
import '../../components/my_button.dart';
import '../../components/my_textfield.dart';
import '../../utils /color.dart';
import '../../utils /image_strings.dart';
import '../../utils /size.dart';
import '../../utils /texts_string.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final registerController = Get.put(RegisterController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSize.pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  AppImage.khajapani,
                  height: size.height * 0.25,
                ),
              ),
              const SizedBox(height: GSize.spaceBtwItems),
              Center(
                child: Text(
                  GTexts.signUpTitle,
                  textAlign: TextAlign.center,
                  style: semibold.copyWith(
                    fontSize: GSize.fontSizeLg,
                  ),
                ),
              ),
              const SizedBox(
                height: GSize.spaceBtwInputFields / 2,
              ),
              Center(
                child: Text(
                  GTexts.signUpSubTitle,
                  style: medium.copyWith(
                      fontSize: GSize.fontSizeSm, color: Colors.black54),
                ),
              ),
              const SizedBox(
                height: GSize.spaceBtwInputFields,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: GSize.borderRadiusSm),
                // child: GetBuilder<RegisterController>(builder: (controller) {
                //   return Column(
                //     children: [
                //       // Username
                //       const MyTextFormField(
                //         title: GTexts.name,
                //         hinttext: 'Enter your username',
                //       ),
                //       const SizedBox(
                //         height: GSize.spaceBtwInputFields,
                //       ),

                //       //phone-number
                //       const MyTextFormField(
                //         title: GTexts.phoneNo,
                //         hinttext: 'Enter your Phone Number',
                //       ),
                //       const SizedBox(
                //         height: GSize.spaceBtwInputFields,
                //       ),
                //       // Email
                //       const MyTextFormField(
                //         title: GTexts.email,
                //         hinttext: 'Enter your email',
                //       ),
                //       const SizedBox(
                //         height: GSize.spaceBtwInputFields,
                //       ),
                //       const MyTextFormField(
                //         title: GTexts.password,
                //         hinttext: 'Enter your password',
                //       ),
                //       const SizedBox(
                //         height: GSize.spaceBtwInputFields,
                //       ),
                //       MyButton(title: GTexts.signUp, onPressed: () {}),
                //       const SizedBox(
                //         height: GSize.spaceBtwItems / 2,
                //       ),
                //     ],
                //   );
                // }),
                child: Column(
                  children: [
                    // Username
                    const MyTextFormField(
                      title: GTexts.name,
                      hinttext: 'Enter your username',
                    ),
                    const SizedBox(
                      height: GSize.spaceBtwInputFields,
                    ),

                    //phone-number
                    const MyTextFormField(
                      title: GTexts.phoneNo,
                      hinttext: 'Enter your Phone Number',
                    ),
                    const SizedBox(
                      height: GSize.spaceBtwInputFields,
                    ),
                    // Email
                    const MyTextFormField(
                      title: GTexts.email,
                      hinttext: 'Enter your email',
                    ),
                    const SizedBox(
                      height: GSize.spaceBtwInputFields,
                    ),
                    const MyTextFormField(
                      title: GTexts.password,
                      hinttext: 'Enter your password',
                    ),
                    const SizedBox(
                      height: GSize.spaceBtwInputFields,
                    ),
                    MyButton(title: GTexts.signUp, onPressed: () {}),
                    const SizedBox(
                      height: GSize.spaceBtwItems / 2,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Aleady have an account?',
                    style: regular.copyWith(
                        fontSize: GSize.fontSizeSm, color: Colors.black54),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'SingUp',
                      style: regular.copyWith(
                          fontSize: GSize.fontSizeSm, color: GColors.secondary),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterController {}
