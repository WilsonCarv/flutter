import 'package:cinemapedia_app/domain/entities/movie.dart';
import 'package:cinemapedia_app/presentation/delegates/search_movie_delegate.dart';
import 'package:cinemapedia_app/presentation/providers/providers.dart';
import 'package:cinemapedia_app/presentation/providers/search/search_movies_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final colors = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleMedium;
    return SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Icon(
                  Icons.movie_outlined,
                  color: colors.primary,
                ),
                Text('Cinema', style: titleStyle),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    final searchedMovies = ref.read(searchedMoviesProvider);
                    final searchQuery = ref.read(searchQueryProvider);
                    final movieRepository = ref.read(movieRepositoryProvider);
                    showSearch<Movie?>(
                            query: searchQuery,
                            context: context,
                            delegate: SearchMovieDelegate(
                                initialMovies: searchedMovies,
                                searchMovies: movieRepository.searchMovies))
                        .then((movie) {
                      if (movie == null) return;

                      context.push('/movie/${movie.id}');
                    });
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
