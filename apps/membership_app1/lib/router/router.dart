// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:widget/ui/app_bottom_navigation.dart';

// Project imports:
import 'package:membership_app1/view/page/contact/contact_page.dart';
import 'package:membership_app1/view/page/favorite/favorite_page.dart';
import 'package:membership_app1/view/page/home/home_page.dart';
import 'package:membership_app1/view/page/my_page/my_page.dart';
import 'package:membership_app1/view/page/order/order_page.dart';

part 'bottom_navigation/contact_route.dart';
part 'bottom_navigation/favorite_route.dart';
part 'bottom_navigation/home_route.dart';
part 'bottom_navigation/my_page_route.dart';
part 'bottom_navigation/order_route.dart';

part 'router.g.dart';

final routerProvider = Provider(
  (ref) => GoRouter(
    routes: $appRoutes,
    initialLocation: OrderRouterPath.order,
    navigatorKey: _rootNavigatorKey,
    redirect: (context, state) async {
      return null;
    },
  ),
);

/// ルートページstateを保持するkey
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

/// ボトムナビゲーションのstateを保持するkey
final GlobalKey<NavigatorState> _bottomNavigatorKey =
    GlobalKey<NavigatorState>();

/// ボトムナビゲーションルート定義
@TypedStatefulShellRoute<BottomNavigationShellRoute>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    // ボトムボタンメニューに紐づくページ定義
    homeTypedStatefulShellBranch,
    myPageTypedStatefulShellBranch,
    orderTypedStatefulShellBranch,
    contactTypedStatefulShellBranch,
    favoriteTypedStatefulShellBranch,
  ],
)
class BottomNavigationShellRoute extends StatefulShellRouteData {
  const BottomNavigationShellRoute();

  static final GlobalKey<NavigatorState> $navigatorKey = _bottomNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return navigationShell;
  }

  static Widget $navigatorContainerBuilder(
    BuildContext context,
    StatefulNavigationShell navigationShell,
    List<Widget> children,
  ) {
    return AppBottomNavigation(
      currentIndex: navigationShell.currentIndex,
      children: children,
      onTap: (index) {
        navigationShell.goBranch(
          index,
          initialLocation: true,
        );
      },
    );
  }
}
