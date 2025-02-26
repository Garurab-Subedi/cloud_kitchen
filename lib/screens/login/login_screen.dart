import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaja_pani/screens/forgetpassword/forget_password.dart';
import 'package:khaja_pani/screens/login/loginWidget/login_widgets.dart';
import 'package:khaja_pani/screens/main/main_view.dart';
import 'package:khaja_pani/utils%20/color.dart';
import '../../components/my_button.dart';
import '../../components/my_textfield.dart';
import '../../utils /image_strings.dart';
import '../../utils /size.dart';
import '../../utils /texts_string.dart';
import '../../utils /theme.dart';
import '../register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSize.pagePadding),
          child: Column(
            children: [
              LoginHeader(size: size),
              const SizedBox(
                height: GSize.borderRadiusMd,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: GSize.pagePadding),
                child: Column(
                  children: [
                    const MyTextFormField(
                      title: GTexts.email,
                      hinttext: 'Enter your email address',
                    ),
                    const SizedBox(
                      height: GSize.spaceBtwInputFields,
                    ),
                    const MyTextFormField(
                      // textEditingController:
                      //     loginController.passwordController,
                      title: GTexts.password,
                      hinttext: 'Enter your password',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Get.to(const ForgetPassword()),
                          child: Text(
                            GTexts.forgotPassword,
                            style: regular.copyWith(
                              fontSize: GSize.fontSizeSm,
                              color: GColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: GSize.sm,
                    ),
                    MyButton(
                        title: GTexts.login,
                        onPressed: () => Get.to(() => const NavigationMenu()))
                  ],
                ),
              ),
              const SizedBox(
                height: GSize.xs,
              ),

              // Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Flexible(
                    child: Divider(
                      color: darkGrey,
                      thickness: 3,
                      indent: 40,
                      endIndent: 7,
                    ),
                  ),
                  Text(
                    GTexts.orSingInWith.capitalize!,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const Flexible(
                    child: Divider(
                        color: darkGrey,
                        thickness: 3,
                        indent: 7,
                        endIndent: 40),
                  ),
                ],
              ),
              const SizedBox(
                height: GSize.spaceBtwSections / 2,
              ),

              /// -- Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: GColors.grey),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: GColors.darkerGrey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Image(
                          width: GSize.iconmd,
                          height: GSize.iconmd,
                          image: AssetImage(AppImage.facebook)),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: GSize.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: GColors.grey),
                      borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(
                          color: GColors.darkerGrey.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset: const Offset(5, 5),
                        ),
                      ],
                    ),
                    child: IconButton(
                      icon: const Image(
                        width: GSize.iconmd,
                        height: GSize.iconmd,
                        image: AssetImage(AppImage.google),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: GSize.spaceBtwSections,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: regular.copyWith(
                        fontSize: GSize.fontSizeSm, color: Colors.black54),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const RegisterScreen());
                    },
                    child: Text(
                      'SingUp',
                      style: regular.copyWith(
                          fontSize: GSize.fontSizeSm, color: GColors.primary),
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
