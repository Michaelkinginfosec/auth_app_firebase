import 'package:auth_app_firebase/core/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/app_size.dart';
import '../../../../core/theme/app_style.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Spacer(flex: 3),
            Image.asset("assets/images/image3.png"),
            AppSize.fifty,
            Text(
              "Easy transactions\n with Jumot.",
              style: AppStyle.onboardingBigText,
              textAlign: TextAlign.center,
            ),
            Text(
              "Buy a vehicle according to your preference with the best negotiated price.",
              style: AppStyle.onboardingSmallText,
              textAlign: TextAlign.center,
            ),
            AppSize.hundred,
            Container(
              width: double.infinity,
              height: 53,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.blue,
              ),
              child: Center(child: Text("Login", style: AppStyle.login)),
            ),
            AppSize.thirty,
            Container(
              width: double.infinity,
              height: 53,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3, color: AppColor.blue),
                color: AppColor.white,
              ),
              child: Center(child: Text("Register", style: AppStyle.register)),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
