import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice_app/core/constants/app_dimens.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';
import 'package:practice_app/features/presentation/widgets/custom_text_field.dart';
import 'package:practice_app/features/presentation/widgets/horizontal_line.dart';

class SingInPage extends StatefulWidget {
  const SingInPage({super.key});

  @override
  State<SingInPage> createState() => _SingInPageState();
}

class _SingInPageState extends State<SingInPage> {
  TextEditingController controllerEmail = TextEditingController();

  TextEditingController controllerPassword = TextEditingController();

  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.mainHorizontalPadding,
            vertical: AppDimens.mainVerticalPadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sing In',
                style: GoogleFonts.imprima(textStyle: AppTextStyles.s48w400),
              ),
              const SizedBox(height: AppDimens.minVerticalPadding),
              const HorizontalLine(),
              const SizedBox(height: AppDimens.maxVerticalPadding),
              CustomTextField(
                hintText: 'Loremipsum@gmail.com',
                title: 'EMAIL OR PHONE',
                controller: controllerEmail,
                onChanged: (val) {
                  if (val.isNotEmpty) {
                    errorText;
                  } else {
                    errorText = 'Input email or phone number';
                  }
                  setState(() {});
                },
              ),
              const SizedBox(
                height: AppDimens.mediumVerticalPadding,
              ),
              CustomTextField(
                hintText: '',
                title: 'PASSWORD',
                obscureText: true,
                controller: controllerPassword,
                onChanged: (val) {
                  if (val.length > 6) {
                    errorText;
                  } else {
                    errorText =
                        'The password must contain more than 6 elements';
                  }
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
