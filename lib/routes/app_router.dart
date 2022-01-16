import 'package:crypto_investment/modules/home/presentation/home_page.dart';
import 'package:crypto_investment/modules/market/presentation/market_page.dart';
import 'package:crypto_investment/modules/portfolio/presentation/portfolio_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      redirect: (_) => '/market',
    ),
    GoRoute(
        path: '/:path',
        pageBuilder: (context, state) {
          final path = state.params['path'];
          return NoTransitionPage<void>(
            child: HomePage(
              path: path ?? '/market',
            ),
          );
        })
  ]);
}

abstract class Routes {
  static const ROOT = '/';
  static const HOME = '/home';
  static const MARKET = '/market';
  static const PORTFOLIO = '/market';
}

class NestedNavigation {
  static Map<String, int> nestedRoutesIndex = {
    Routes.MARKET: 0,
    Routes.PORTFOLIO: 1,
  };

  static Map<int, Widget> nestedRoutesWidget = {
    0: const MarketPage(),
    1: const PortfolioPage(),
  };
}
