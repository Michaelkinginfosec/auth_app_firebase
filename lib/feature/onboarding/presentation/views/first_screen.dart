import 'package:auth_app_firebase/core/theme/app_size.dart';
import 'package:auth_app_firebase/core/theme/app_style.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Spacer(),
            Image.asset("assets/images/image1.png"),
            AppSize.fifty,
            Text(
              "Easy transactions\n with Jumot.",
              style: AppStyle.onboardingBigText,
              textAlign: TextAlign.center,
            ),
            Text(
              "The buying and selling business reaches all\nregions in Indonesia",
              style: AppStyle.onboardingSmallText,
              textAlign: TextAlign.center,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
