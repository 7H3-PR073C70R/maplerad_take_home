import 'package:flutter/material.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_spacing.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/theme_extension.dart';
import 'package:maplerad_take_home_project/src/gen/assets.gen.dart';

class WirepayAICard extends StatelessWidget {
  const WirepayAICard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.radius),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.radius),
        color: AppColors.kcWhite,
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 22.radius,
                backgroundColor: AppColors.kcSuccessSecondary,
                child: AppAssets.icons.stash.svg(
                  height: 24.radius,
                  width: 24.radius,
                ),
              ),
              AppSpacing.horizontalSpaceMedium,
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Stash plan',
                          style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 16.fontSize,
                            fontWeight: FontWeight.w600,
                            color: AppColors.kcText,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            r'-$67.99',
                            textAlign: TextAlign.right,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontSize: 16.fontSize,
                              fontWeight: FontWeight.w500,
                              color: AppColors.kcDarkText,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Verifying identity',
                          style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 12.fontSize,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kcAccent,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            'Pending',
                            textAlign: TextAlign.right,
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontSize: 12.fontSize,
                              fontWeight: FontWeight.w400,
                              color: AppColors.kcAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          Divider(
            color: AppColors.kcDarkBorder,
            height: 1.height,
          ),
          AppSpacing.verticalSpaceMedium,
          Row(
            children: [
              CircleAvatar(
                radius: 22.radius,
                backgroundColor: AppColors.kcSuccessSecondary,
                child: AppAssets.icons.stash.svg(
                  height: 24.radius,
                  width: 24.radius,
                ),
              ),
              AppSpacing.horizontalSpaceMedium,
              Expanded(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Wedding Trip',
                          style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 16.fontSize,
                            fontWeight: FontWeight.w600,
                            color: AppColors.kcText,
                          ),
                        ),
                        Text(
                          'From USD account',
                          style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 12.fontSize,
                            fontWeight: FontWeight.w400,
                            color: AppColors.kcDarkText,
                          ),
                        ),
                      ],
                    ),
                    AppSpacing.horizontalSpaceSmall,
                    Expanded(
                      child: Text(
                        r'$2,300.00',
                        textAlign: TextAlign.right,
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontSize: 16.fontSize,
                          fontWeight: FontWeight.w500,
                          color: AppColors.kcSuccess,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
