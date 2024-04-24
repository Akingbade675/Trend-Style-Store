import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trend_style_store/app_view.dart';
import 'package:trend_style_store/src/modules/authentication/blocs/cubit/onboarding_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: const AppView(),
    );
  }
}
