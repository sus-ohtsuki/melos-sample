part of '../router.dart';

class HomeRouterPath {
  static const String home = '/';
}

const homeTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomePageRoute>(
      path: HomeRouterPath.home,
    ),
  ],
);

class HomePageRoute extends GoRouteData {
  const HomePageRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: HomePage(),
    );
  }
}
