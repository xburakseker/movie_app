// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobx_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobxModelView on _MobxModelViewBase, Store {
  late final _$selectedIndexAtom =
      Atom(name: '_MobxModelViewBase.selectedIndex', context: context);

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  late final _$popularMoviesAtom =
      Atom(name: '_MobxModelViewBase.popularMovies', context: context);

  @override
  PopularMoviesModel? get popularMovies {
    _$popularMoviesAtom.reportRead();
    return super.popularMovies;
  }

  @override
  set popularMovies(PopularMoviesModel? value) {
    _$popularMoviesAtom.reportWrite(value, super.popularMovies, () {
      super.popularMovies = value;
    });
  }

  late final _$isLoadingPopularMoviesAtom =
      Atom(name: '_MobxModelViewBase.isLoadingPopularMovies', context: context);

  @override
  bool get isLoadingPopularMovies {
    _$isLoadingPopularMoviesAtom.reportRead();
    return super.isLoadingPopularMovies;
  }

  @override
  set isLoadingPopularMovies(bool value) {
    _$isLoadingPopularMoviesAtom
        .reportWrite(value, super.isLoadingPopularMovies, () {
      super.isLoadingPopularMovies = value;
    });
  }

  late final _$nowPlayingMoviesAtom =
      Atom(name: '_MobxModelViewBase.nowPlayingMovies', context: context);

  @override
  NowPlayingMoviesModel? get nowPlayingMovies {
    _$nowPlayingMoviesAtom.reportRead();
    return super.nowPlayingMovies;
  }

  @override
  set nowPlayingMovies(NowPlayingMoviesModel? value) {
    _$nowPlayingMoviesAtom.reportWrite(value, super.nowPlayingMovies, () {
      super.nowPlayingMovies = value;
    });
  }

  late final _$isLoadingNowPlayingMoviesAtom = Atom(
      name: '_MobxModelViewBase.isLoadingNowPlayingMovies', context: context);

  @override
  bool get isLoadingNowPlayingMovies {
    _$isLoadingNowPlayingMoviesAtom.reportRead();
    return super.isLoadingNowPlayingMovies;
  }

  @override
  set isLoadingNowPlayingMovies(bool value) {
    _$isLoadingNowPlayingMoviesAtom
        .reportWrite(value, super.isLoadingNowPlayingMovies, () {
      super.isLoadingNowPlayingMovies = value;
    });
  }

  late final _$upComingMoviesAtom =
      Atom(name: '_MobxModelViewBase.upComingMovies', context: context);

  @override
  UpComingMoviesModel? get upComingMovies {
    _$upComingMoviesAtom.reportRead();
    return super.upComingMovies;
  }

  @override
  set upComingMovies(UpComingMoviesModel? value) {
    _$upComingMoviesAtom.reportWrite(value, super.upComingMovies, () {
      super.upComingMovies = value;
    });
  }

  late final _$isLoadingUpComingMoviesAtom = Atom(
      name: '_MobxModelViewBase.isLoadingUpComingMovies', context: context);

  @override
  bool get isLoadingUpComingMovies {
    _$isLoadingUpComingMoviesAtom.reportRead();
    return super.isLoadingUpComingMovies;
  }

  @override
  set isLoadingUpComingMovies(bool value) {
    _$isLoadingUpComingMoviesAtom
        .reportWrite(value, super.isLoadingUpComingMovies, () {
      super.isLoadingUpComingMovies = value;
    });
  }

  late final _$topRatedMoviesAtom =
      Atom(name: '_MobxModelViewBase.topRatedMovies', context: context);

  @override
  TopRatedMoviesModel? get topRatedMovies {
    _$topRatedMoviesAtom.reportRead();
    return super.topRatedMovies;
  }

  @override
  set topRatedMovies(TopRatedMoviesModel? value) {
    _$topRatedMoviesAtom.reportWrite(value, super.topRatedMovies, () {
      super.topRatedMovies = value;
    });
  }

  late final _$isLoadingTopRatedMoviesAtom = Atom(
      name: '_MobxModelViewBase.isLoadingTopRatedMovies', context: context);

  @override
  bool get isLoadingTopRatedMovies {
    _$isLoadingTopRatedMoviesAtom.reportRead();
    return super.isLoadingTopRatedMovies;
  }

  @override
  set isLoadingTopRatedMovies(bool value) {
    _$isLoadingTopRatedMoviesAtom
        .reportWrite(value, super.isLoadingTopRatedMovies, () {
      super.isLoadingTopRatedMovies = value;
    });
  }

  late final _$tabsIndexAtom =
      Atom(name: '_MobxModelViewBase.tabsIndex', context: context);

  @override
  int get tabsIndex {
    _$tabsIndexAtom.reportRead();
    return super.tabsIndex;
  }

  @override
  set tabsIndex(int value) {
    _$tabsIndexAtom.reportWrite(value, super.tabsIndex, () {
      super.tabsIndex = value;
    });
  }

  late final _$getPopularMoviesAsyncAction =
      AsyncAction('_MobxModelViewBase.getPopularMovies', context: context);

  @override
  Future getPopularMovies() {
    return _$getPopularMoviesAsyncAction.run(() => super.getPopularMovies());
  }

  late final _$getNowPlayingMoviesAsyncAction =
      AsyncAction('_MobxModelViewBase.getNowPlayingMovies', context: context);

  @override
  Future getNowPlayingMovies() {
    return _$getNowPlayingMoviesAsyncAction
        .run(() => super.getNowPlayingMovies());
  }

  late final _$getUpComingMoviesAsyncAction =
      AsyncAction('_MobxModelViewBase.getUpComingMovies', context: context);

  @override
  Future getUpComingMovies() {
    return _$getUpComingMoviesAsyncAction.run(() => super.getUpComingMovies());
  }

  late final _$getTopRatedMoviesAsyncAction =
      AsyncAction('_MobxModelViewBase.getTopRatedMovies', context: context);

  @override
  Future getTopRatedMovies(int value) {
    return _$getTopRatedMoviesAsyncAction
        .run(() => super.getTopRatedMovies(value));
  }

  late final _$_MobxModelViewBaseActionController =
      ActionController(name: '_MobxModelViewBase', context: context);

  @override
  void onItemTapped(int index) {
    final _$actionInfo = _$_MobxModelViewBaseActionController.startAction(
        name: '_MobxModelViewBase.onItemTapped');
    try {
      return super.onItemTapped(index);
    } finally {
      _$_MobxModelViewBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex},
popularMovies: ${popularMovies},
isLoadingPopularMovies: ${isLoadingPopularMovies},
nowPlayingMovies: ${nowPlayingMovies},
isLoadingNowPlayingMovies: ${isLoadingNowPlayingMovies},
upComingMovies: ${upComingMovies},
isLoadingUpComingMovies: ${isLoadingUpComingMovies},
topRatedMovies: ${topRatedMovies},
isLoadingTopRatedMovies: ${isLoadingTopRatedMovies},
tabsIndex: ${tabsIndex}
    ''';
  }
}
