import 'package:auto_route/auto_route.dart';
import 'package:flutter_restapi/utils/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: SplashRoute.page,
            path: '/splash',
            transitionsBuilder: TransitionsBuilders.fadeIn,
            initial: true),
        CustomRoute(
            page: LoginRoute.page,
            path: '/login',
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            page: RegisterRoute.page,
            path: '/register',
            transitionsBuilder: TransitionsBuilders.fadeIn)
      ];
}
