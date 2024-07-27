import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:maplerad_take_home_project/src/app/router/app_router.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_spacing.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/router_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/theme_extension.dart';
import 'package:maplerad_take_home_project/src/features/authentication/presentation/pages/face_scan_page.dart';
import 'package:maplerad_take_home_project/src/features/authentication/presentation/widgets/pin_field.dart';
import 'package:maplerad_take_home_project/src/gen/assets.gen.dart';
import 'package:maplerad_take_home_project/src/gen/fonts.gen.dart';
import 'package:maplerad_take_home_project/src/l10n/l10n.dart';
import 'package:maplerad_take_home_project/src/shared/widgets/shrinkable_button.dart';

@RoutePage()
class WelcomeBackPage extends HookWidget {
  const WelcomeBackPage({super.key});

  static const routeName = '/welcome-back';

  @override
  Widget build(BuildContext context) {
    final appString = context.l10n;
    return Scaffold(
      backgroundColor: AppColors.kcPrimary,
      body: Stack(
        children: [
          AppAssets.svgs.bgMask.svg(
            width: AppSpacing.screenWidth(context),
          ),
          Opacity(
            opacity: .1,
            child: ColoredBox(
              color: const Color(0xFF1E293B),
              child: SizedBox(
                width: AppSpacing.screenWidth(context),
                height: AppSpacing.screenHeight(context),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                AppSpacing.setVerticalSpace(48),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppAssets.images.sampleProfile.image(
                      height: 32.radius,
                      width: 32.radius,
                      fit: BoxFit.cover,
                    ),
                    AppSpacing.setHorizontalSpace(12),
                    Text(
                      '${appString.hi}, \$miracle ${appString.sparkles}',
                      style: context.textTheme.displayMedium?.copyWith(
                        fontSize: 32.fontSize,
                        fontWeight: FontWeight.w700,
                        color: AppColors.kcWhite,
                      ),
                    ),
                  ],
                ),
                AppSpacing.verticalSpaceSmall,
                Text(
                  appString.input4digitPin,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontSize: 16.fontSize,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kcWhite,
                    fontFamily: FontFamily.nunitoSans,
                  ),
                ),
                AppSpacing.setVerticalSpace(24),
                Expanded(
                  child: PinField(
                    onCompleted: (pin) => context.navigator.replaceAll(
                      const [
                        MainRoute(),
                      ],
                    ),
                  ),
                ),
                AppSpacing.setVerticalSpace(48),
                ShrinkableButton(
                  onTap: () => context.navigator.replaceNamed(
                    FaceScanPage.routeName,
                  ),
                  child: Text(
                    appString.forgotPinCode,
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w500,
                      color: AppColors.kcWhite,
                      fontFamily: FontFamily.nunitoSans,
                    ),
                  ),
                ),
                AppSpacing.setVerticalSpace(38),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
