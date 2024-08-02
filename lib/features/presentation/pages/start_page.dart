import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_assets.dart';
import 'package:practice_app/core/constants/app_dimens.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';
import 'package:practice_app/features/presentation/pages/sign_in.dart';
import 'package:practice_app/features/presentation/widgets/rounded_btn.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              AppAssets.startPageBG,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(),
                  Image.asset(AppAssets.logo),
                  const Spacer(),
                  Text(
                    'Rent your dream car from the Best Company',
                    style: AppTextStyles.s26w600.copyWith(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppDimens.vp70),
                  RoundedButton(
                    text: 'Get Started',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ));
                    },
                  ),
                  const SizedBox(height: AppDimens.vp80),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
