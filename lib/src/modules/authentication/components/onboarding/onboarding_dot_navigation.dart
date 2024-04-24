import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:trend_style_store/src/modules/authentication/blocs/cubit/onboarding_cubit.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = context.isDarkMode;

    return Positioned(
        left: TSizes.defaultSpace,
        bottom: context.bottomBarHeight + 25,
        child: SmoothPageIndicator(
          controller: context.read<OnBoardingCubit>().state.pageController,
          count: 3,
          effect: ExpandingDotsEffect(
            activeDotColor: dark ? TColors.white : TColors.dark,
            dotHeight: 6,
          ),
        ));
  }
}
