import "package:go_router/go_router.dart";
import "package:routing/pages/about.dart";
import "package:routing/pages/contact.dart";
import "package:routing/pages/home.dart";
import "package:routing/pages/profile.dart";

GoRouter router = GoRouter(
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      name: 'profile',
      path: '/profile',
      builder: (context, state) => const Profile(),
    ),
    GoRoute(
      name: 'contact',
      path: '/contact',
      builder: (context, state) => const Contact(),
    ),
    GoRoute(
      name: 'about',
      path: '/about',
      builder: (context, state) => const About(),
    ),
  ],
);
