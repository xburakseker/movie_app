import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/now_playing_movies_model.dart';
import 'package:movie_app/models/popular_movies_model.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/models/top_rated_movies_model.dart';
import 'package:movie_app/models/upcoming_movies_model.dart';

class GeneralServices {
  Dio dio = Dio(BaseOptions(baseUrl: "https://api.themoviedb.org/3/"));

  Future<PopularMoviesModel?> getPopularMovies(BuildContext context) async {
    PopularMoviesModel data = PopularMoviesModel();
    var params = {
      'api_key': '1766b57880485003728e35b9e635559e',
    };
    try {
      final response = await dio.get("movie/populaasr", queryParameters: params);
      data = PopularMoviesModel.fromJson(response.data);
      return data;
    } catch (e) {
      if (e == DioError) {
        data.errorMessage = e.toString();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${data}")));

        return data;
      } else {
        data.errorMessage = "bilmiyom hatayı";
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${data}")));

        return data;
      }
    }
  }

  Future<NowPlayingMoviesModel?> getNowPlayingMovies() async {
    var params = {
      'api_key': '1766b57880485003728e35b9e635559e',
    };
    try {
      final response = await dio.get("movie/now_playing", queryParameters: params);

      if (response.statusCode == 200) {}

      return NowPlayingMoviesModel.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<UpComingMoviesModel?> getUpComingMovies() async {
    var params = {
      'api_key': '1766b57880485003728e35b9e635559e',
    };
    try {
      final response = await dio.get("movie/upcoming", queryParameters: params);

      return UpComingMoviesModel.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }

  Future<TopRatedMoviesModel?> getTopRatedMovies() async {
    var params = {
      'api_key': '1766b57880485003728e35b9e635559e',
    };
    try {
      final response = await dio.get("movie/top_rated", queryParameters: params);
      return TopRatedMoviesModel.fromJson(response.data);
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
