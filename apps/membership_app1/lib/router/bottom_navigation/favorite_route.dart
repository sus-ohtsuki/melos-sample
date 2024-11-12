part of '../router.dart';

class FavoriteRouterPath {
  static const String favorite = '/favorite';
}

const favoriteTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<FavoritePageRoute>(
      path: FavoriteRouterPath.favorite,
    ),
  ],
);

class FavoritePageRoute extends GoRouteData {
  const FavoritePageRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: FavoritePage(),
    );
  }
}
