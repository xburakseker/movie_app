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

  List<Tab> tabsList = [
    Tab(
      child: Text(
        "Now Playing",
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600),
      ),
    ),
    Tab(
      child: Text(
        "Upcoming",
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600),
      ),
    ),
    Tab(
      child: Text(
        "Top rated",
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600),
      ),
    ),
    Tab(
      child: Text(
        "Popular",
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w600),
      ),
    ),
  ];

  @override
  void initState() {
    vm.getPopularMovies(context);
    vm.getNowPlayingMovies();
    vm.getUpComingMovies();
    super.initState();
    _tabController = TabController(length: 4, vsync: this, animationDuration: const Duration(milliseconds: 500));
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
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w500),
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
                    if (vm.isLoadingPopularMovies == false && vm.popularMovies!.errorMessage!.isEmpty) {
                      return Container(
                        margin: EdgeInsets.only(left: 5.w),
                        width: 36.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(vm.popularMovies!.results!.isNotEmpty
                                    ? "https://image.tmdb.org/t/p/original/${vm.popularMovies!.results![index].backdropPath}"
                                    : "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.majestik.gen.tr%2Fedremit-mobilya-2%2Fmobilya-renk-kartelasi%2Fduz-mobilya-renkleri.html&psig=AOvVaw1nlrgIg_Xug3n_fo7ERikf&ust=1670399105938000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCOCmmL7A5PsCFQAAAAAdAAAAABAM"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20.sp)),
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  });
                },
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            SizedBox(
              width: 100.w,
              child: TabBar(
                controller: _tabController,
                tabs: tabsList,
                onTap: (value) => vm.getTopRatedMovies(value),
              ),
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
                  /* vm.tabsIndex == 0
                          ? vm.nowPlayingMovies!.results!.isNotEmpty
                              ? vm.nowPlayingMovies!.results!.length
                              : 10
                          : vm.tabsIndex == 1
                              ? vm.upComingMovies!.results!.isNotEmpty
                                  ? vm.upComingMovies!.results!.length
                                  : 10
                              : vm.tabsIndex == 2
                                  ? vm.topRatedMovies!.results!.isNotEmpty
                                      ? vm.topRatedMovies!.results!.length
                                      : 10
                                  : vm.tabsIndex == 3
                                      ? vm.popularMovies!.results!.isNotEmpty
                                          ? vm.popularMovies!.results!.length
                                          : 10
                                      : 10, */
                  itemBuilder: (context, index) {
                    return Observer(builder: (_) {
                      return vm.tabsIndex == 0
                          ? vm.isLoadingNowPlayingMovies
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
                                          image: NetworkImage(vm.nowPlayingMovies!.results!.isNotEmpty
                                              ? "https://image.tmdb.org/t/p/original/${vm.nowPlayingMovies!.results![index].backdropPath}"
                                              : "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.majestik.gen.tr%2Fedremit-mobilya-2%2Fmobilya-renk-kartelasi%2Fduz-mobilya-renkleri.html&psig=AOvVaw1nlrgIg_Xug3n_fo7ERikf&ust=1670399105938000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCOCmmL7A5PsCFQAAAAAdAAAAABAM"),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(20.sp)),
                                )
                          : vm.tabsIndex == 1
                              ? vm.isLoadingUpComingMovies
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
                                              image: NetworkImage(vm.upComingMovies!.results!.isNotEmpty
                                                  ? "https://image.tmdb.org/t/p/original/${vm.upComingMovies!.results![index].backdropPath}"
                                                  : "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.majestik.gen.tr%2Fedremit-mobilya-2%2Fmobilya-renk-kartelasi%2Fduz-mobilya-renkleri.html&psig=AOvVaw1nlrgIg_Xug3n_fo7ERikf&ust=1670399105938000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCOCmmL7A5PsCFQAAAAAdAAAAABAM"),
                                              fit: BoxFit.cover),
                                          borderRadius: BorderRadius.circular(20.sp)),
                                    )
                              : vm.tabsIndex == 2
                                  ? vm.isLoadingTopRatedMovies
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
                                                  image: NetworkImage(vm.topRatedMovies!.results!.isNotEmpty
                                                      ? "https://image.tmdb.org/t/p/original/${vm.topRatedMovies!.results![index].backdropPath}"
                                                      : "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.majestik.gen.tr%2Fedremit-mobilya-2%2Fmobilya-renk-kartelasi%2Fduz-mobilya-renkleri.html&psig=AOvVaw1nlrgIg_Xug3n_fo7ERikf&ust=1670399105938000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCOCmmL7A5PsCFQAAAAAdAAAAABAM"),
                                                  fit: BoxFit.cover),
                                              borderRadius: BorderRadius.circular(20.sp)),
                                        )
                                  : vm.tabsIndex == 3
                                      ? vm.isLoadingPopularMovies
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
                                                      image: NetworkImage(vm.popularMovies!.results!.isNotEmpty
                                                          ? "https://image.tmdb.org/t/p/original/${vm.popularMovies!.results![index].backdropPath}"
                                                          : "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.majestik.gen.tr%2Fedremit-mobilya-2%2Fmobilya-renk-kartelasi%2Fduz-mobilya-renkleri.html&psig=AOvVaw1nlrgIg_Xug3n_fo7ERikf&ust=1670399105938000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCOCmmL7A5PsCFQAAAAAdAAAAABAM"),
                                                      fit: BoxFit.cover),
                                                  borderRadius: BorderRadius.circular(20.sp)),
                                            )
                                      : Container(
                                          margin: EdgeInsets.only(
                                            left: 5.w,
                                          ),
                                          width: 20.w,
                                          height: 18.h,
                                          decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(20.sp)),
                                        );
                    });
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
