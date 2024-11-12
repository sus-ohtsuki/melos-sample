part of '../router.dart';

class MyPageRouterPath {
  static const String myPage = '/my_page';
}

const myPageTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<MyPageRoute>(
      path: MyPageRouterPath.myPage,
    ),
  ],
);

class MyPageRoute extends GoRouteData {
  const MyPageRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: MyPage(),
    );
  }
}
