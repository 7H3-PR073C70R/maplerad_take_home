import 'package:flutter/material.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/theme_extension.dart';
import 'package:maplerad_take_home_project/src/gen/fonts.gen.dart';
import 'package:maplerad_take_home_project/src/shared/widgets/shrinkable_button.dart';

class PinFieldButton extends StatelessWidget {
  const PinFieldButton({
    required this.onPressed,
    super.key,
    this.text,
    this.child,
  });

  final String? text;
  final Widget? child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ShrinkableButton(
      onTap: onPressed,
      child: child ??
          CircleAvatar(
            radius: 26.radius,
            backgroundColor: AppColors.kcButton,
            child: Text(
              text ?? '',
              style: context.textTheme.bodyMedium?.copyWith(
                fontSize: 24.fontSize,
                fontWeight: FontWeight.w500,
                color: AppColors.kcWhite,
                fontFamily: FontFamily.nunitoSans,
              ),
            ),
          ),
    );
  }
}
