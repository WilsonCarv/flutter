import 'package:cinemapedia_app/infraestructure/datasources/movidedb_datasource.dart';
import 'package:cinemapedia_app/infraestructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImplementation(datasource: MovidedbDatasource());
});
