import 'package:flutter/material.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_spacing.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/theme_extension.dart';
import 'package:maplerad_take_home_project/src/gen/assets.gen.dart';
import 'package:maplerad_take_home_project/src/l10n/l10n.dart';
import 'package:maplerad_take_home_project/src/shared/widgets/shrinkable_button.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appString = context.l10n;
    return Padding(
      padding: EdgeInsets.only(
        top: 60.height,
        left: AppSpacing.horizontalSpacing,
        right: AppSpacing.horizontalSpacing,
      ),
      child: Row(
        children: [
          AppAssets.images.sampleProfile.image(
            height: 32.radius,
            width: 32.radius,
            fit: BoxFit.cover,
          ),
          const Spacer(),
          ShrinkableButton(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(42.radius),
                color: AppColors.kcDarkBlueBG,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12.width,
                vertical: 7.height,
              ),
              child: Row(
                children: [
                  AppAssets.icons.gift.svg(
                    height: 24.radius,
                    width: 24.radius,
                  ),
                  AppSpacing.horizontalSpaceSmall,
                  Text(
                    '${appString.earn} \$1',
                    style: context.textTheme.bodyMedium?.copyWith(
                      fontSize: 14.fontSize,
                      fontWeight: FontWeight.w600,
                      color: AppColors.kcPrimary,
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {},
          ),
          AppSpacing.horizontalSpaceMedium,
          ShrinkableButton(
            onTap: () {},
            child: AppAssets.icons.barCode.svg(
              width: 24.radius,
              height: 24.radius,
            ),
          ),
          AppSpacing.horizontalSpaceMedium,
          ShrinkableButton(
            onTap: () {},
            child: AppAssets.icons.notification.svg(
              width: 24.radius,
              height: 24.radius,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(92.height);
}
