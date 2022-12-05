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
isLoadingNowPlayingMovies: ${isLoadingNowPlayingMovies}
    ''';
  }
}
