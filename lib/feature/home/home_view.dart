import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../product/navigator/app_router.dart';
import '../../product/utility/assets/assets.dart';
import '../../product/utility/colors/colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        HistoryViewTab(),
        SearchFullRouteTab(),
        FavouriteViewTab(),
      ],
      builder: (context, child, tabController) {
        return Scaffold(
          body: child,
          bottomNavigationBar: SizedBox(
              height: 86.h,
              child: BottomNavigationBar(
                  selectedFontSize: 0,
                  currentIndex: context.tabsRouter.activeIndex,
                  onTap: context.tabsRouter.setActiveIndex,
                  items: [
                    BottomNavigationBarItem(
                        activeIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            AssetsUtility.smallHistoryIcon,
                            color: ColorUtility.tdkMain,
                            fit: BoxFit.cover,
                          ),
                        ),
                        label: "",
                        icon: Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  AssetsUtility.smallHistoryIcon,
                                  color: ColorUtility.textParagraph2,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Container(
                                  decoration: const BoxDecoration(color: ColorUtility.tdkMain, shape: BoxShape.circle),
                                  height: 4.h,
                                  width: 4.w,
                                ),
                              )
                            ],
                          ),
                        )),
                    BottomNavigationBarItem(
                        label: "",
                        icon: Container(
                          decoration: const BoxDecoration(color: ColorUtility.tdkMain, shape: BoxShape.circle),
                          width: 56.w,
                          height: 56.h,
                          child: SizedBox(
                              height: 28.h,
                              width: 28.w,
                              child: SvgPicture.asset(
                                AssetsUtility.mediumSearchIcon,
                                color: ColorUtility.bottomAppBar,
                                fit: BoxFit.scaleDown,
                              )),
                        )),
                    BottomNavigationBarItem(
                        activeIcon: SizedBox(
                          height: 24.h,
                          width: 24.w,
                          child: SvgPicture.asset(
                            AssetsUtility.smallFavouriteIcon,
                            color: ColorUtility.tdkMain,
                            fit: BoxFit.cover,
                          ),
                        ),
                        label: "",
                        icon: Padding(
                          padding: EdgeInsets.only(top: 5.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                height: 24.h,
                                width: 24.w,
                                child: SvgPicture.asset(
                                  AssetsUtility.smallFavouriteIcon,
                                  color: ColorUtility.textParagraph2,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h),
                                child: Container(
                                  decoration: const BoxDecoration(color: ColorUtility.tdkMain, shape: BoxShape.circle),
                                  height: 4.h,
                                  width: 4.w,
                                ),
                              )
                            ],
                          ),
                        ))
                  ])),
        );
      },
    );
  }
}
