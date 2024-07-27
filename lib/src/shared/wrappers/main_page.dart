import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:maplerad_take_home_project/src/app/router/app_router.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_spacing.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/theme_extension.dart';
import 'package:maplerad_take_home_project/src/gen/assets.gen.dart';
import 'package:maplerad_take_home_project/src/gen/fonts.gen.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({
    super.key,
  });

  static const routeName = '/main';

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
      ],
      animationCurve: Curves.easeInCubic,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      bottomNavigationBuilder: (_, tabsRouter) {
        return Container(
          height: 83.height,
          width: double.infinity,
          color: AppColors.kcWhite,
          padding: EdgeInsets.only(top: 8.height),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              (
                text: 'Home',
                icon: AppAssets.icons.home,
              ),
              (
                text: 'Wirebeam',
                icon: AppAssets.icons.wirepay,
              ),
              (
                text: 'Cards',
                icon: AppAssets.icons.wirepay,
              ),
            ]
                .map(
                  (nav) => Column(
                    children: [
                      nav.icon.svg(
                        height: 24.radius,
                        width: 24.radius,
                      ),
                      AppSpacing.setVerticalSpace(2),
                      Text(
                        nav.text,
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 10.fontSize,
                          fontFamily: FontFamily.nunitoSans,
                          fontWeight: nav.text == 'Home'
                              ? FontWeight.w800
                              : FontWeight.w400,
                          color: nav.text == 'Home'
                              ? AppColors.kcPrimary
                              : AppColors.kcDarkText,
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
