import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kinopoisk_bloc_four/ui/theme/flex_theme.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/movie_details_screen/movie_details_widgets/movie_details_main_info_widget.dart';
import 'package:search_movies_repository/search_movies_repository.dart';

class MovieDetailsScreen extends StatefulWidget {
  final MovieIdResponse movie;

  const MovieDetailsScreen({Key? key, required this.movie}) : super(key: key);

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  bool _stretch = true;

  @override
  Widget build(BuildContext context) {
    final theme = FlexThemeDataStyle.darkThemeStyle;
    final movie = widget.movie;
    final bgColor = theme.scaffoldBackgroundColor;
    final mediaQueryData = MediaQuery.of(context);
    final height = mediaQueryData.size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      themeMode: ThemeMode.dark,
      home: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              forceElevated: true,
              leading: IconButton(
                alignment: Alignment.centerLeft,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              floating: false,
              pinned: true,
              snap: false,
              stretch: true,
              onStretchTrigger: () async {},
              stretchTriggerOffset: 300.0,
              expandedHeight: (height - 100),
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: const EdgeInsetsDirectional.only(
                  bottom: 0,
                ),
                expandedTitleScale: 1.2,
                collapseMode: CollapseMode.parallax,
                title: Container(
                  width: double.maxFinite,
                  color: bgColor,
                  // color: const Color.fromARGB(255, 34, 43, 46),
                  height: 65,
                  alignment: Alignment.center,
                  // padding: const EdgeInsets.only(bottom: 0, top: 0),
                  // margin: EdgeInsets.zero,
                  child: Text(
                    '${movie.name}',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ), // Заголовок SliverAppBar
                background: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          '${movie.poster?.previewUrl}', // Ваше изображение
                          fit: BoxFit.cover,
                        ),
                        ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                            child: Container(
                              color: Colors.grey.withOpacity(0.2),
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 140,
                        horizontal: 40,
                      ),
                      child: Image.network(
                        '${movie.poster?.previewUrl}', // Ваше изображение
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                stretchModes: const [
                  StretchMode.zoomBackground,
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                MovieDetailsMainInfoWidget(movie: movie),
              ]),
            ),
            SliverList.builder(
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  color: Colors.red,
                );
              },
              itemCount: 10,
            ),
          ],
        ),
      ),
    );
  }
}
