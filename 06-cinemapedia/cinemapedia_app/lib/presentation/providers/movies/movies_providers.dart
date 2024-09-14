import 'package:cinemapedia_app/domain/entities/movie.dart';
import 'package:cinemapedia_app/presentation/providers/movies/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowPlayingMoviesProvider =
    StateNotifierProvider<MoviesNotifier, List<Movie>>((ref) {
  final fetchMoreMovies = ref.watch(movieRepositoryProvider).getNowPlaying;
  return MoviesNotifier(fetchMoreMovies);
});

typedef MovieCallback = Future<List<Movie>> Function({required int page});

class MoviesNotifier extends StateNotifier<List<Movie>> {
  int currentPage = 0;

  final MovieCallback fetchMovies;

  MoviesNotifier(this.fetchMovies) : super([]);

  Future<void> loadNextPage() async {
    currentPage++;
    final movies = await fetchMovies(page: currentPage);
    state = [...state, ...movies];
  }
}
