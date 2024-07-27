import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_spacing.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/theme_extension.dart';
import 'package:maplerad_take_home_project/src/features/home/presentation/widgets/account_balance_cards.dart';
import 'package:maplerad_take_home_project/src/features/home/presentation/widgets/account_information_cards.dart';
import 'package:maplerad_take_home_project/src/features/home/presentation/widgets/home_app_bar.dart';
import 'package:maplerad_take_home_project/src/features/home/presentation/widgets/verify_identity_card.dart';
import 'package:maplerad_take_home_project/src/features/home/presentation/widgets/wirepay_ai_card.dart';
import 'package:maplerad_take_home_project/src/gen/assets.gen.dart';
import 'package:maplerad_take_home_project/src/l10n/l10n.dart';
import 'package:maplerad_take_home_project/src/shared/widgets/app_button.dart';
import 'package:maplerad_take_home_project/src/shared/widgets/shrinkable_button.dart';

@RoutePage()
class HomePage extends HookWidget {
  const HomePage({super.key});

  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    final appString = context.l10n;
    return Scaffold(
      backgroundColor: AppColors.kcOffWhite,
      appBar: const HomeAppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppSpacing.horizontalSpacing,
        ),
        children: [
          AppSpacing.verticalSpaceLarge,
          Row(
            children: [
              Text(
                appString.myAccounts,
                style: context.textTheme.displayLarge?.copyWith(
                  fontSize: 18.fontSize,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kcLightModeGray,
                ),
              ),
              const Spacer(),
              Text(
                appString.hideBalance,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 14.fontSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kcLightModeGray,
                ),
              ),
              AppSpacing.horizontalSpaceSmall,
              ShrinkableButton(
                onTap: () {},
                child: AppAssets.icons.viewOff.svg(
                  height: 24.radius,
                  width: 24.radius,
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          SizedBox(
            height: 115.height,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => AccountBalanceCards(
                index: index,
              ),
              separatorBuilder: (_, __) => AppSpacing.setHorizontalSpace(10),
              itemCount: 4,
            ),
          ),
          AppSpacing.verticalSpaceMedium,
          Row(
            children: [
              Expanded(
                child: AppButton(
                  text: 'Send Money',
                  onPressed: () {},
                ),
              ),
              AppSpacing.horizontalSpaceSmall,
              Expanded(
                child: AppButton(
                  text: 'Add Money',
                  textColor: AppColors.kcPrimary,
                  backgroundColor: AppColors.kcDarkBlueBG,
                  onPressed: () {},
                ),
              ),
              AppSpacing.horizontalSpaceSmall,
              ShrinkableButton(
                child: CircleAvatar(
                  radius: 20.radius,
                  backgroundColor: AppColors.kcDarkBlueBG,
                  child: Center(
                    child: AppAssets.icons.moreHorizontal.svg(
                      height: 16.radius,
                      width: 16.radius,
                    ),
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          AppSpacing.setVerticalSpace(40),
          Row(
            children: [
              Text(
                appString.getStarted,
                style: context.textTheme.displayLarge?.copyWith(
                  fontSize: 18.fontSize,
                  fontWeight: FontWeight.w600,
                  color: AppColors.kcBlack,
                ),
              ),
              const Spacer(),
              ShrinkableButton(
                child: Text(
                  appString.viewAllSteps,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontSize: 14.fontSize,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kcPrimary,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.kcPrimary,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          const VerifyIdentityCard(),
          AppSpacing.setVerticalSpace(32),
          Text(
            appString.wirepayAI,
            style: context.textTheme.displayLarge?.copyWith(
              fontSize: 18.fontSize,
              fontWeight: FontWeight.w600,
              color: AppColors.kcBlack,
            ),
          ),
          AppSpacing.verticalSpaceMedium,
          const WirepayAICard(),
          AppSpacing.setVerticalSpace(32),
          Text(
            appString.accountInformation,
            style: context.textTheme.displayLarge?.copyWith(
              fontSize: 18.fontSize,
              fontWeight: FontWeight.w600,
              color: AppColors.kcBlack,
            ),
          ),
          AppSpacing.verticalSpaceMedium,
          SizedBox(
            height: 132.height,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) => AccountInformationCards(
                index: index,
              ),
              separatorBuilder: (_, __) => AppSpacing.horizontalSpaceSmall,
              itemCount: 2,
            ),
          ),
          AppSpacing.setVerticalSpace(40),
        ],
      ),
    );
  }
}
