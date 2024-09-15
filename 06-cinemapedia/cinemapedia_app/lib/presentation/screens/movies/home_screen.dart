import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cinemapedia_app/presentation/providers/providers.dart';
import 'package:cinemapedia_app/presentation/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();

    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
     ref.read( popularMoviesProvider.notifier ).loadNextPage();
    ref.read( topRatedMoviesProvider.notifier ).loadNextPage();
    ref.read( upcomingMoviesProvider.notifier ).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final initialLoading = ref.watch(initialLoadingProvider);
    if ( initialLoading ) return const FullScreenLoader();
    
    final slideShowMovies = ref.watch( moviesSlideShowProvider );
    final nowPlayingMovies = ref.watch( nowPlayingMoviesProvider );
    final popularMovies = ref.watch( popularMoviesProvider );
    final topRatedMovies = ref.watch( topRatedMoviesProvider );
    final upcomingMovies = ref.watch( upcomingMoviesProvider );

    return CustomScrollView(
      slivers: [

        const SliverAppBar(
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            title: CustomAppBar(),
          ),
        ),


        SliverList(delegate: SliverChildBuilderDelegate(
          (context, index) {
              return Column(
                  children: [
              
                    MoviesSlideshow(movies: slideShowMovies ),
              
                    MovieHorizontalListview(
                      movies: nowPlayingMovies,
                      title: 'Playing now',
                      subTitle: 'Monday 20th',
                      loadNextPage: () =>ref.read(nowPlayingMoviesProvider.notifier).loadNextPage()
                      
                    ),
              
                    MovieHorizontalListview(
                      movies: upcomingMovies,
                      title: 'Next',
                      subTitle: 'This month',
                      loadNextPage: () =>ref.read(upcomingMoviesProvider.notifier).loadNextPage()
                    ),
              
                    MovieHorizontalListview(
                      movies: popularMovies,
                      title: 'Popular',
                      // subTitle: '',
                      loadNextPage: () =>ref.read(popularMoviesProvider.notifier).loadNextPage()
                    ),
              
                    MovieHorizontalListview(
                      movies: topRatedMovies,
                      title: 'Best rated',
                      subTitle: 'Today',
                      loadNextPage: () =>ref.read(topRatedMoviesProvider.notifier).loadNextPage()
                    ),

                    const SizedBox( height: 10 ),
              
              
                  ],
                );
          },
          childCount: 1
        )),

      ]
    );
  }
}
