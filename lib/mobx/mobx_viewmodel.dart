import 'package:mobx/mobx.dart';
import 'package:movie_app/models/now_playing_movies_model.dart';
import 'package:movie_app/models/popular_movies_model.dart';
import 'package:movie_app/services/general_services.dart';
part 'mobx_viewmodel.g.dart';

class MobxModelView = _MobxModelViewBase with _$MobxModelView;

abstract class _MobxModelViewBase with Store {
  //BottomNavBar change process
  @observable
  int selectedIndex = 0;
  @action
  void onItemTapped(int index) {
    selectedIndex = index;
  }

  //Popular Movies
  @observable
  PopularMoviesModel? popularMovies;
  @observable
  bool isLoadingPopularMovies = true;

  @action
  getPopularMovies() async {
    isLoadingPopularMovies = true;
    popularMovies = await GeneralServices().getPopularMovies();
    isLoadingPopularMovies = false;
  }

  //NowPlaying Movies
  @observable
  NowPlayingMoviesModel? nowPlayingMovies;
  @observable
  bool isLoadingNowPlayingMovies = true;

  @action
  getNowPlayingMovies() async {
    isLoadingNowPlayingMovies = true;
    nowPlayingMovies = await GeneralServices().getNowPlayingMovies();
    isLoadingNowPlayingMovies = false;
  }
}
