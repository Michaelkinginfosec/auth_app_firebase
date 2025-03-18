import 'package:auth_app_firebase/core/theme/app_color.dart';
import 'package:auth_app_firebase/core/theme/app_size.dart';
import 'package:auth_app_firebase/feature/onboarding/presentation/views/first_screen.dart';
import 'package:auth_app_firebase/feature/onboarding/presentation/views/second_screen.dart';
import 'package:auth_app_firebase/feature/onboarding/presentation/views/third_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currenPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currenPage = page;
                });
              },
              children: [FirstScreen(), SecondScreen(), ThirdScreen()],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_currenPage > 0)
                  GestureDetector(
                    onTap: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text(
                      "Previous",
                      style: TextStyle(color: AppColor.blue),
                    ),
                  ),
                AppSize.fiftyWidth,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Image.asset(
                        "assets/images/ova.png",
                        color:
                            _currenPage == index
                                ? AppColor.blue
                                : AppColor.grey,
                      ),
                    );
                  }),
                ),
                AppSize.fiftyWidth,
                if (_currenPage < 2)
                  GestureDetector(
                    onTap: () {
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text("Next", style: TextStyle(color: AppColor.blue)),
                  ),
              ],
            ),
          ),
          AppSize.fifty,
        ],
      ),
    );
  }
}
