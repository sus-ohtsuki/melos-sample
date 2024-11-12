part of '../router.dart';

class OrderRouterPath {
  static const String order = '/order';
}

const orderTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<OrderPageRoute>(
      path: OrderRouterPath.order,
    ),
  ],
);

class OrderPageRoute extends GoRouteData {
  const OrderPageRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: OrderPage(),
    );
  }
}
