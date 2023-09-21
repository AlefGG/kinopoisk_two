import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk_bloc_four/ui/navigation/main_navigation.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/loader_widget/widget/loader_view_cubit.dart';

class LoaderWidget extends StatelessWidget {
  const LoaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoaderViewCubit, LoaderViewState>(
      listenWhen: (previous, current) => current != LoaderViewState.unknown,
      listener: (context, state) async {
        await Future.delayed(const Duration(seconds: 1));
        const nextScreen = MainNavigationRouteNames.mainScreen;
        if (context.mounted) {
          Navigator.of(context).pushReplacementNamed(nextScreen);
        }
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
