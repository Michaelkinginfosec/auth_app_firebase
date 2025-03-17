import 'package:auth_app_firebase/routers/routes.dart';
import 'package:auth_app_firebase/routers/routes_name.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: appRoutes,
  initialLocation: AppRoutes.onboarding,
);
