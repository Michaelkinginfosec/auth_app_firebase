import 'package:auth_app_firebase/core/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_size.dart';
import '../../../../core/theme/app_style.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Spacer(),
            Image.asset("assets/images/image2.png"),
            AppSize.fourty,
            Text(
              "Easy transactions\n with Jumot.",
              style: AppStyle.onboardingBigText,
              textAlign: TextAlign.center,
            ),
            Text(
              "Buying and selling can be done via COD to check the items before purchasing.",
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
