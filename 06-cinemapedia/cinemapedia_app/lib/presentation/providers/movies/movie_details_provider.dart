import 'package:cinemapedia_app/domain/entities/movie.dart';
import 'package:cinemapedia_app/presentation/providers/movies/movies_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieDetailsProvider =
    StateNotifierProvider<MovieMapNotifier, Map<String, Movie>>((ref) {
  final getMovieById = ref.watch(movieRepositoryProvider).getMovieById;
  return MovieMapNotifier(getMovieById);
});

typedef GetMovieByIdCallback = Future<Movie> Function(String id);

class MovieMapNotifier extends StateNotifier<Map<String, Movie>> {
  final GetMovieByIdCallback getMovieById;

  MovieMapNotifier(this.getMovieById) : super({});

  Future<void> loadMovie(String movieId) async {
    if (state[movieId] != null) return;

    final movie = await getMovieById(movieId);


    state = {...state, movieId: movie};
  }
}
