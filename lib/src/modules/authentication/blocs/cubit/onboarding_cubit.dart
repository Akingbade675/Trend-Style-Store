import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingState(0, PageController()));

  void onPageChanged(int index) {
    emit(OnBoardingState(index, state.pageController));
  }

  void onSkipPressed() {
    state.pageController.animateToPage(2,
        duration: const Duration(milliseconds: 300), curve: Curves.linear);
    emit(OnBoardingState(2, state.pageController));
  }

  void onNextPressed() {
    if (state.currentIndex < 2) {
      state.pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      emit(OnBoardingState(state.currentIndex + 1, state.pageController));
    } else {
      // Navigate to next screen
    }
  }
}

class OnBoardingState extends Equatable {
  final int currentIndex;
  final PageController pageController;

  const OnBoardingState(this.currentIndex, this.pageController);

  @override
  List<Object> get props => [currentIndex, pageController];
}
