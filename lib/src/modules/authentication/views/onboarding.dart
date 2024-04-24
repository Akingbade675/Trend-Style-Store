import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trend_style_store/src/modules/authentication/blocs/cubit/onboarding_cubit.dart';
import 'package:trend_style_store/src/modules/authentication/components/onboarding/onboarding_dot_navigation.dart';
import 'package:trend_style_store/src/modules/authentication/components/onboarding/onboarding_next_button.dart';
import 'package:trend_style_store/src/modules/authentication/components/onboarding/onboarding_page.dart';
import 'package:trend_style_store/src/modules/authentication/components/onboarding/onboarding_skip.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/texts.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: context.read<OnBoardingCubit>().state.pageController,
            onPageChanged: (index) {
              context.read<OnBoardingCubit>().onPageChanged(index);
            },
            children: const [
              OnBoardingPage(
                image: TImages.onboarding1,
                title: TTexts.onboardingTitle1,
                description: TTexts.onboardingDescription1,
              ),
              OnBoardingPage(
                image: TImages.onboarding2,
                title: TTexts.onboardingTitle2,
                description: TTexts.onboardingDescription2,
              ),
              OnBoardingPage(
                image: TImages.onboarding3,
                title: TTexts.onboardingTitle3,
                description: TTexts.onboardingDescription3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dots Indicator
          const OnBoardingDotNavigation(),

          /// Get Started Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
