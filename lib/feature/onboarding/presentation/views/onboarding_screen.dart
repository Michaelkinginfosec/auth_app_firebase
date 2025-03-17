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
    super.dispose();
    _pageController.dispose();
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
          GestureDetector(
            onTap: () {
              if (_currenPage < 2) {
                _pageController.animateToPage(
                  _currenPage + 1,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                );
              }
              // else {
              //   _pageController.animateToPage(
              //     _currenPage - 1,
              //     duration: Duration(milliseconds: 300),
              //     curve: Curves.easeIn,
              //   );
              // }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Previous",
                    style: TextStyle(
                      color: _currenPage == 2 ? AppColor.blue : AppColor.white,
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (int index) {
                      return Image.asset(
                        "assets/images/ova.png",
                        color:
                            _currenPage == index
                                ? AppColor.blue
                                : AppColor.grey,
                      );
                    }),
                  ),
                  Spacer(),
                  Text(
                    "Next",
                    style: TextStyle(
                      color:
                          (_currenPage < 2 && _currenPage > 0)
                              ? AppColor.blue
                              : AppColor.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),

          AppSize.fifty,
        ],
      ),
    );
  }
}
