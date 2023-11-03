import 'package:animations/animations.dart';
import 'package:go_router/go_router.dart';
import 'package:testing_navigation_2_and_wolts/src/presentation/simple_view.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      name: "home",
      pageBuilder: (context, state) {
        // Without transition it appears normally (needs restart to set routes)
        // return const NoTransitionPage(child: SimpleView());

        // Here is the transition that makes it dissapear
        return CustomTransitionPage(
          child: const SimpleView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
              child: child,
            );
          },
        );
      },
    )
  ],
  initialLocation: "/",
  observers: [],
);
