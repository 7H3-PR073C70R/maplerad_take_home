import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:maplerad_take_home_project/src/app/router/app_router.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_colors.dart';
import 'package:maplerad_take_home_project/src/core/constants/app_spacing.dart';
import 'package:maplerad_take_home_project/src/core/extensions/num_extension.dart';
import 'package:maplerad_take_home_project/src/core/extensions/router_extension.dart';
import 'package:maplerad_take_home_project/src/features/authentication/presentation/widgets/pin_field_button.dart';
import 'package:maplerad_take_home_project/src/gen/assets.gen.dart';

class PinField extends HookWidget {
  const PinField({
    required this.onCompleted,
    super.key,
  });

  final ValueChanged<String> onCompleted;

  @override
  Widget build(BuildContext context) {
    final pin = useState('');

    pin.addListener(() {
      if (pin.value.length == 4) {
        onCompleted(pin.value);
      }
    });

    return Column(
      children: [
        Container(
          height: 52.height,
          width: 180.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200.radius),
            color: AppColors.kcButton,
          ),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 16.width,
            children: List.generate(
              4,
              (index) => CircleAvatar(
                radius: 6.radius,
                backgroundColor: pin.value.length >= index + 1
                    ? AppColors.kcPrimary
                    : AppColors.kcDisable,
              ),
            ),
          ),
        ),
        AppSpacing.setVerticalSpace(88),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 61.5.width),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...[
                  ['1', '2', '3'],
                  ['4', '5', '6'],
                  ['7', '8', '9'],
                ].map(
                  (value) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: value
                        .map(
                          (value) => PinFieldButton(
                            onPressed: () => pin.value = '${pin.value}$value',
                            text: value,
                          ),
                        )
                        .toList(),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PinFieldButton(
                      child: AppAssets.icons.faceIcon.svg(),
                      onPressed: () => context.navigator.replaceAll(
                        const [
                          MainRoute(),
                        ],
                      ),
                    ),
                    PinFieldButton(
                      onPressed: () => pin.value = '${pin.value}0',
                      text: '0',
                    ),
                    PinFieldButton(
                      child: AppAssets.icons.backSpace.svg(),
                      onPressed: () => pin.value = pin.value.isEmpty
                          ? ''
                          : pin.value.substring(0, pin.value.length - 1),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
