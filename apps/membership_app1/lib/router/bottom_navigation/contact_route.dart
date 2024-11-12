part of '../router.dart';

class ContactRouterPath {
  static const String contact = '/contact';
}

const contactTypedStatefulShellBranch = TypedStatefulShellBranch(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<ContactPageRoute>(
      path: ContactRouterPath.contact,
    ),
  ],
);

class ContactPageRoute extends GoRouteData {
  const ContactPageRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return const NoTransitionPage(
      child: ContactPage(),
    );
  }
}
