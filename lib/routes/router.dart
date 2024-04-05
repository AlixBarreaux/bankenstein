import "package:bankenstein/views/home_view.dart";
import "package:bankenstein/views/login_view.dart";
import "package:go_router/go_router.dart";

abstract class AppRouter {
  static final router = GoRouter(
    initialLocation: "/login",
    routes: [
      GoRoute(
        name: HomeView.name,
        path: "/home",
        builder: (_, __) => const HomeView(),
      ),
      GoRoute(
        name: LoginView.name,
        path: "/login",
        builder: (_, __) => const LoginView(),
      )
    ],
  );
}
