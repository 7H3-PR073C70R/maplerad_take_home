import 'package:flutter/material.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_spacing.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/theme_extension.dart';
import 'package:maplerad_take_home_project/src/gen/assets.gen.dart';
import 'package:maplerad_take_home_project/src/gen/fonts.gen.dart';
import 'package:maplerad_take_home_project/src/l10n/l10n.dart';
import 'package:maplerad_take_home_project/src/shared/widgets/shrinkable_button.dart';

class AccountInformationCards extends StatelessWidget {
  const AccountInformationCards({
    required this.index,
    super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final appString = context.l10n;
    return Container(
      width: 264.width,
      height: 132.height,
      padding: EdgeInsets.all(16.radius),
      decoration: BoxDecoration(
        color: AppColors.kcWhite,
        borderRadius: BorderRadius.circular(12.radius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  [
                    '1 USD = 1,560.00 NGN',
                    r'$0.00 left of 10,000',
                  ].elementAt(index),
                  style: context.textTheme.displayLarge?.copyWith(
                    fontSize: 16.fontSize,
                    fontWeight: FontWeight.w700,
                    fontFamily: FontFamily.nunitoSans,
                  ),
                ),
              ),
              if (index == 0) ...[
                AppSpacing.horizontalSpaceSmall,
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AppAssets.icons.usFlag.svg(
                      height: 24.radius,
                      width: 24.radius,
                    ),
                    Positioned(
                      left: 16.radius,
                      child: AppAssets.icons.ngnFlag.svg(
                        height: 24.radius,
                        width: 24.radius,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
          AppSpacing.verticalSpaceSmall,
          Text(
            [
              'These amounts don’t include fees. Lat updated:'
                  ' Wednesday, July 3, 2024 at 12:15 PM',
              'Daily limit',
            ].elementAt(index),
            style: context.textTheme.displayLarge?.copyWith(
              fontSize: 10.fontSize,
              fontWeight: FontWeight.w500,
              fontFamily: FontFamily.nunitoSans,
              color: AppColors.kcDarkText,
              height: 1.36.height,
            ),
          ),
          const Spacer(),
          ShrinkableButton(
            onTap: () {},
            child: Row(
              children: [
                Text(
                  [
                    appString.viewRates,
                    appString.viewAllLimits,
                  ].elementAt(index),
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontSize: 14.fontSize,
                    fontWeight: FontWeight.w500,
                    color: AppColors.kcPrimary,
                  ),
                ),
                AppSpacing.setHorizontalSpace(10),
                AppAssets.icons.arrowForward.svg(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
