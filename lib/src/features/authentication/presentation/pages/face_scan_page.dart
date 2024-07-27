import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_spacing.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/router_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/theme_extension.dart';
import 'package:maplerad_take_home_project/src/features/authentication/presentation/pages/welcome_back_page.dart';
import 'package:maplerad_take_home_project/src/gen/assets.gen.dart';
import 'package:maplerad_take_home_project/src/gen/fonts.gen.dart';
import 'package:maplerad_take_home_project/src/l10n/l10n.dart';
import 'package:maplerad_take_home_project/src/shared/widgets/app_button.dart';
import 'package:maplerad_take_home_project/src/shared/widgets/shrinkable_button.dart';

@RoutePage()
class FaceScanPage extends HookWidget {
  const FaceScanPage({super.key});

  static const routeName = '/face-scan';

  @override
  Widget build(BuildContext context) {
    final appString = context.l10n;
    return Scaffold(
      backgroundColor: AppColors.kcOffWhite,
      body: Stack(
        children: [
          Opacity(
            opacity: .49,
            child: AppAssets.svgs.bgMask.svg(
              width: AppSpacing.screenWidth(context),
            ),
          ),
          Opacity(
            opacity: .5,
            child: ColoredBox(
              color: AppColors.kcOffWhite,
              child: SizedBox(
                width: AppSpacing.screenWidth(context),
                height: AppSpacing.screenHeight(context),
              ),
            ),
          ),
          SafeArea(
            bottom: false,
            child: Column(
              children: [
                AppSpacing.setVerticalSpace(71),
                AppAssets.svgs.faceScan.svg(),
                const Spacer(),
                Container(
                  width: AppSpacing.screenWidth(context),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.width,
                    vertical: 32.height,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.kcWhite,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(
                        24.radius,
                      ),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '${appString.welcomeBack}, Miracle',
                        textAlign: TextAlign.center,
                        style: context.textTheme.displayMedium?.copyWith(
                          fontSize: 32.fontSize,
                          fontWeight: FontWeight.w700,
                          color: AppColors.kcText,
                        ),
                      ),
                      AppSpacing.verticalSpaceSmall,
                      Text(
                        appString.useFaceIdToSignIn,
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 14.fontSize,
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.nunitoSans,
                        ),
                      ),
                      AppSpacing.setVerticalSpace(138),
                      AppButton(
                        text: appString.useFaceIdToSignIn,
                        onPressed: () {},
                      ),
                      AppSpacing.setVerticalSpace(20),
                      ShrinkableButton(
                        child: Text(appString.signInWithPinCode),
                        onTap: () => context.navigator.replaceNamed(
                          WelcomeBackPage.routeName,
                        ),
                      ),
                      AppSpacing.setVerticalSpace(26),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
