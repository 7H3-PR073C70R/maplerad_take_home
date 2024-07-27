// ignore_for_file: unused_import

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maplerad_take_home_project/src/features/authentication/presentation/pages/face_scan_page.dart';
import 'package:maplerad_take_home_project/src/features/authentication/presentation/pages/welcome_back_page.dart';
import 'package:maplerad_take_home_project/src/features/home/presentation/pages/home_page.dart';
import 'package:maplerad_take_home_project/src/shared/wrappers/main_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WelcomeBackRoute.page,
          path: WelcomeBackPage.routeName,
          initial: true,
        ),
        AutoRoute(
          page: FaceScanRoute.page,
          path: FaceScanPage.routeName,
        ),
        AutoRoute(
          page: MainRoute.page,
          path: MainPage.routeName,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: HomePage.routeName,
            ),
          ],
        ),
      ];
}
