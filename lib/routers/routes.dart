import 'package:auth_app_firebase/feature/onboarding/presentation/views/onboarding_screen.dart';
import 'package:auth_app_firebase/routers/routes_name.dart';
import 'package:go_router/go_router.dart';

final List<GoRoute> appRoutes = [
  GoRoute(
    path: AppRoutes.onboarding,
    name: AppRoutes.onboarding,
    builder: (context, state) => OnboardingScreen(),
  ),
];
