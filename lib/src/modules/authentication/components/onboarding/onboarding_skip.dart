import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trend_style_store/src/modules/authentication/blocs/cubit/onboarding_cubit.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.statusBarHeight + TSizes.defaultSpace,
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          context.read<OnBoardingCubit>().onSkipPressed();
        },
        child: Text(
          TTexts.skip,
          style: context.textTheme.bodyMedium?.copyWith(color: TColors.primary),
        ),
      ),
    );
  }
}
