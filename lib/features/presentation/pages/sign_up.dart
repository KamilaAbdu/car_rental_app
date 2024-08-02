import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/core/constants/app_assets.dart';
import 'package:practice_app/core/constants/app_dimens.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';
import 'package:practice_app/features/presentation/pages/main_page.dart';
import 'package:practice_app/features/presentation/pages/sign_in.dart';
import 'package:practice_app/features/presentation/widgets/custom_text_field.dart';
import 'package:practice_app/features/presentation/widgets/custom_transparent_btn.dart';
import 'package:practice_app/features/presentation/widgets/forgot_password_btn.dart';
import 'package:practice_app/features/presentation/widgets/horizontal_line.dart';
import 'package:practice_app/features/presentation/widgets/custom_btn.dart';
import 'package:practice_app/features/presentation/widgets/yellow_text_btn.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerFullName = TextEditingController();

  String? fullNameErrorText;
  String? emailErrorText;
  String? passwordErrorText;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.mainHorizontalPadding,
              vertical: AppDimens.mainVerticalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign Up',
                  style: GoogleFonts.imprima(textStyle: AppTextStyles.s48w400)),
              const SizedBox(height: AppDimens.minVerticalPadding),
              const HorizontalLine(),
              const SizedBox(height: AppDimens.largeVerticalPadding),
              CustomTextField(
                  hintText: 'Lorem Ipsum',
                  title: 'Full name'.toUpperCase(),
                  controller: controllerFullName,
                  onChanged: (val) {
                    setState(() {
                      fullNameErrorText =
                          val.isNotEmpty ? null : 'Input your Full Name';
                    });
                  }),
              const SizedBox(height: AppDimens.smallVerticalPadding),
              CustomTextField(
                  errorText: emailErrorText,
                  hintText: 'Loremipsum@gmail.com',
                  title: 'EMAIL OR PHONE',
                  controller: controllerEmail,
                  onChanged: (val) {
                    setState(() {
                      emailErrorText =
                          val.isNotEmpty ? null : 'Input email or phone number';
                    });
                  }),
              const SizedBox(height: AppDimens.smallVerticalPadding),
              CustomTextField(
                  errorText: passwordErrorText,
                  hintText: '***********',
                  title: 'PASSWORD',
                  obscureText: obscureText,
                  controller: controllerPassword,
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(obscureText
                        ? Icons.remove_red_eye
                        : Icons.visibility_outlined),
                  ),
                  onChanged: (val) {
                    setState(() {
                      passwordErrorText = val.length > 6
                          ? null
                          : 'The password must contain more than 6 elements';
                    });
                  }),
              SizedBox(height: MediaQuery.of(context).size.height * 0.035),
              LoginButton(
                text: 'Log In',
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ));
                },
              ),
              const SizedBox(height: 9),
              Center(
                  child:
                      Text('OR'.toUpperCase(), style: AppTextStyles.s16w300)),
              const SizedBox(height: AppDimens.smallVerticalPadding),
              const CustomTransparentButton(
                  text: 'Continue with Google',
                  imageIcon: AppAssets.googleLogo),
              const SizedBox(height: AppDimens.smallVerticalPadding),
              const CustomTransparentButton(
                  text: 'Continue with Facebook',
                  imageIcon: AppAssets.facebookLogo),
              const SizedBox(height: AppDimens.smallVerticalPadding),
              Row(
                children: [
                  Text(
                    'Don’t Have an account yet?',
                    style: AppTextStyles.s15w400.copyWith(color: Colors.black),
                  ),
                  const Spacer(),
                  YellowTextButton(
                    text: 'Sign In'.toUpperCase(),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInPage()));
                    },
                  ),
                ],
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
