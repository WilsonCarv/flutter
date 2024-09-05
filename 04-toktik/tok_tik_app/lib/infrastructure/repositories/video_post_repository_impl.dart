import 'package:tok_tik_app/domain/datasource/video_posts_datasource.dart';
import 'package:tok_tik_app/domain/entities/video_post.dart';
import 'package:tok_tik_app/domain/repositories/video_post_repository.dart';

class VideoPostRepositoryImpl implements VideoPostsRepository {
  final VideoPostsDatasource videoPostsDatasource;

  VideoPostRepositoryImpl({required this.videoPostsDatasource});
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videoPostsDatasource.getTrendingVideosByPage(page);
  }
}
