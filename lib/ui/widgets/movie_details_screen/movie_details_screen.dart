import 'package:flutter/material.dart';
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
    final mediaQueryData = MediaQuery.of(context);
    final height = mediaQueryData.size.height;

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tv),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
          ],
          onTap: (_) {},
        ),
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: <Widget>[
            SliverAppBar(
              floating: false,
              pinned: true,
              snap: false,
              stretch: _stretch,
              onStretchTrigger: () async {},
              stretchTriggerOffset: 300.0,
              expandedHeight: height - 100,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                ],
                expandedTitleScale: 1.5,
                centerTitle: true,
                title: Text('${widget.movie.name}'),
                background: Padding(
                  padding: EdgeInsets.all(50),
                  child: Image(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(
                          '${widget.movie.poster?.previewUrl}' ?? '')),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: index.isOdd ? Colors.white : Colors.black12,
                    height: 100,
                    child: Center(
                      child: Text('$index', textScaleFactor: 5),
                    ),
                  );
                },
                childCount: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
