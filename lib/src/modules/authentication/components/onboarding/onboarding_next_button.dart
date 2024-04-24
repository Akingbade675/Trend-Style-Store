import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trend_style_store/src/modules/authentication/blocs/cubit/onboarding_cubit.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: context.bottomBarHeight,
      child: ElevatedButton(
        onPressed: () {
          context.read<OnBoardingCubit>().onNextPressed();
        },
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : TColors.dark,
        ),
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
