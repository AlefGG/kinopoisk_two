import 'package:flutter/material.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/kinopoisk_250_list/popular_movies_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Top250Widget(),
        Center(
          child: Text('hello'),
        ),
      ],
    );
  }
}
