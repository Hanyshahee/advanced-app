import 'package:advancedapp/features/on_bording/presentation/views/onbording_screen.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path:'/',builder: (context , state)=> const OnbordingScreen() )
    ]
  );
}
