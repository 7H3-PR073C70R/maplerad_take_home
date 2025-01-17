import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maplerad_take_home_project/src/app/router/app_router.dart';

/// Please use this router extension to navigate to a route
/// instead of using the navigator directly.
/// So we can avoid importing auto_route in every file.
/// Always please endeavour to use named route.
extension RouterExtension on BuildContext {
  StackRouter get navigator => router;

  void popUntilMain() => navigator.popUntil(
        (route) => route.settings.name == MainRoute.name,
      );
}
