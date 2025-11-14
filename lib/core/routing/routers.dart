import 'package:advancedapp/features/login_screen/presentation/views/log_in_view.dart';
import 'package:advancedapp/features/on_bording/presentation/views/onbording_screen.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const kgetstarted = '/getstarted';
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const OnbordingScreen()),
      GoRoute(
        path: kgetstarted,
        builder: (context, state) => const LogInView(),
      ),
    ],
  );
}
