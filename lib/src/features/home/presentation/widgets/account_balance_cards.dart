import 'package:flutter/material.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_spacing.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/theme_extension.dart';
import 'package:maplerad_take_home_project/src/gen/assets.gen.dart';
import 'package:maplerad_take_home_project/src/gen/fonts.gen.dart';
import 'package:maplerad_take_home_project/src/l10n/l10n.dart';

class AccountBalanceCards extends StatelessWidget {
  const AccountBalanceCards({
    required this.index, super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final appString = context.l10n;
    return Container(
      width: 194.width,
      height: 115.height,
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
              [
                AppAssets.icons.usFlag,
                AppAssets.icons.ghsFlag,
                AppAssets.icons.ngnFlag,
                AppAssets.icons.artWork,
              ].elementAt(index).svg(
                    height: 32.radius,
                    width: 32.radius,
                  ),
              AppSpacing.horizontalSpaceSmall,
              Text(
                [appString.usd, appString.ghs, appString.ngn, '']
                    .elementAt(index),
                style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 14.fontSize,
                  fontWeight: FontWeight.w500,
                  color: AppColors.kcText,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            [
              r'$200.00',
              '₵5000.00',
              '₦15,000,000.00',
              'Add another currency to your account',
            ].elementAt(index),
            style: context.textTheme.displayLarge?.copyWith(
              fontSize: index == 3 ? 14.fontSize : 20.fontSize,
              fontWeight: index == 3 ? FontWeight.w500 : FontWeight.w800,
              fontFamily: FontFamily.nunitoSans,
            ),
          ),
        ],
      ),
    );
  }
}
