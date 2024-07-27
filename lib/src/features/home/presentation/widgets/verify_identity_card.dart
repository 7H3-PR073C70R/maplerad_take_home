import 'package:flutter/material.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_spacing.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/theme_extension.dart';
import 'package:maplerad_take_home_project/src/gen/assets.gen.dart';
import 'package:maplerad_take_home_project/src/l10n/l10n.dart';
import 'package:maplerad_take_home_project/src/shared/widgets/app_button.dart';
import 'package:maplerad_take_home_project/src/shared/widgets/shrinkable_button.dart';

class VerifyIdentityCard extends StatelessWidget {
  const VerifyIdentityCard({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
     final appString = context.l10n;
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${appString.verifyYourIdentity}, Miracle!',
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 16.fontSize,
                        fontWeight: FontWeight.w500,
                        color: AppColors.kcText,
                      ),
                    ),
                    AppSpacing.verticalSpaceTiny,
                    Text(
                      appString.submitAdditionalInformation,
                      style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 14.fontSize,
                        fontWeight: FontWeight.w400,
                        color: AppColors.kcDarkText,
                      ),
                    ),
                  ],
                ),
              ),
              AppSpacing.horizontalSpaceLarge,
              SizedBox(
                height: 48.radius,
                width: 48.radius,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 48.radius,
                      width: 48.radius,
                      child: CircularProgressIndicator(
                        value: .4,
                        backgroundColor: const Color(0xFFF2F4F7),
                        color: AppColors.kcPrimary,
                        strokeWidth: 4.radius,
                      ),
                    ),
                    Center(
                      child: AppAssets.icons.securityUser.svg(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          AppSpacing.verticalSpaceMedium,
          Row(
            children: [
              AppButton(
                text: appString.verifyIdentity,
                width: 122.width,
                height: 32.height,
                onPressed: () {},
              ),
              const Spacer(),
              ShrinkableButton(
                child: Text(
                  appString.dismiss,
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontSize: 14.fontSize,
                    fontWeight: FontWeight.w400,
                    color: AppColors.kcText,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
