import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kinopoisk_bloc_four/ui/navigation/main_navigation.dart';
import 'package:kinopoisk_bloc_four/ui/widgets/kinopoisk_250_list/bloc/popular_movies_bloc.dart';
import 'package:search_movies_repository/search_movies_repository.dart';

class Top250Widget extends StatefulWidget {
  const Top250Widget({
    super.key,
  });

  @override
  State<Top250Widget> createState() => _Top250WidgetState();
}

class _Top250WidgetState extends State<Top250Widget> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                child: Text(
                  'Топ 250',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Все',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
              builder: (context, state) {
                switch (state.status) {
                  case PopularMoviesStatus.failure:
                    return const Center(child: Text('failed to fetch movies'));
                  case PopularMoviesStatus.success:
                    if (state.movies.isEmpty) {
                      return const Center(child: Text('no movies'));
                    }
                    return ListView.builder(
                      itemExtent: 155,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return index >= state.movies.length
                            ? const _BottomLoader()
                            : _PopularMovieListItem(movie: state.movies[index]);
                      },
                      itemCount: state.hasReachedMax
                          ? state.movies.length
                          : state.movies.length + 1,
                      controller: _scrollController,
                    );
                  case PopularMoviesStatus.initial:
                    return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<PopularMoviesBloc>().add(PopularMoviesFetched());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}

class _BottomLoader extends StatelessWidget {
  const _BottomLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 120.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: 40,
          width: 40,
          child: CircularProgressIndicator(strokeWidth: 3),
        ),
      ),
    );
  }
}

class _PopularMovieListItem extends StatelessWidget {
  final MovieIdResponse movie;
  const _PopularMovieListItem({Key? key, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Stack(
        children: [
          Container(
            height: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Image.network(
                      movie.poster?.previewUrl ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black.withOpacity(0.5),
                  ),
                  width: 200,
                  height: 50,
                  child: Center(
                    child: Text(
                      movie.name ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 270,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.of(context).pushNamed(
                    MainNavigationRouteNames.movieDetails,
                    arguments: movie,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
