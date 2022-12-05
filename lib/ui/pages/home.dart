import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/mobx/mobx_viewmodel.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController;
  final MobxModelView vm = MobxModelView();

  @override
  void initState() {
    vm.getPopularMovies();
    vm.getNowPlayingMovies();
    super.initState();
    _tabController = TabController(
        length: 4,
        vsync: this,
        animationDuration: const Duration(milliseconds: 500));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 93.1.h,
      color: const Color(0xff242A32),
      child: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Welcome!",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500),
                ),
                const Spacer(),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              height: 26.h,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Observer(builder: (_) {
                    return vm.isLoadingPopularMovies
                        ? const CircularProgressIndicator()
                        : Container(
                            margin: EdgeInsets.only(left: 5.w),
                            width: 36.w,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://image.tmdb.org/t/p/original/${vm.popularMovies!.results![index].backdropPath}"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20.sp)),
                          );
                  });
                },
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              width: 100.w,
              child: TabBar(controller: _tabController, tabs: <Tab>[
                Tab(
                  child: Text(
                    "Now Playing",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    "Upcoming",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    "Top rated",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    "Popular",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w600),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 36.h,
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Observer(builder: (_) {
                    return vm.isLoadingNowPlayingMovies
                        ? const Center(
                            child: Padding(
                              padding: EdgeInsets.all(40),
                              child: CircularProgressIndicator(
                                color: Colors.grey,
                              ),
                            ),
                          )
                        : Container(
                            margin: EdgeInsets.only(
                              left: 5.w,
                            ),
                            width: 20.w,
                            height: 18.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://image.tmdb.org/t/p/original/${vm.nowPlayingMovies!.results![index].backdropPath}"),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20.sp)),
                          );
                  });
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}
