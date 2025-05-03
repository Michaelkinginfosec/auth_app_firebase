import 'package:auth_app_firebase/feature/auth/presentation/views/login_screen.dart';
import 'package:auth_app_firebase/feature/auth/presentation/views/registeration_screen.dart';
import 'package:auth_app_firebase/feature/onboarding/presentation/views/onboarding_screen.dart';
import 'package:auth_app_firebase/routers/routes_name.dart';
import 'package:go_router/go_router.dart';

final List<GoRoute> appRoutes = [
  GoRoute(
    path: AppRoutes.onboarding,
    name: AppRoutes.onboarding,
    builder: (context, state) => OnboardingScreen(),
  ),
  GoRoute(
    path: AppRoutes.login,
    name: AppRoutes.login,
    builder: (context, state) => LoginScreen(),
  ),
  GoRoute(
    path: AppRoutes.register,
    name: AppRoutes.register,
    builder: (context, state) => RegisterationScreen(),
  ),
];
