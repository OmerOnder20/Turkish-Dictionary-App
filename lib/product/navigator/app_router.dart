import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tdk_app/feature/screens/history/view/history.dart';
import 'package:tdk_app/feature/home/home_view.dart';
import 'package:tdk_app/feature/screens/detail/view/search_detail.dart';

import '../../feature/screens/favourite/view/favourite.dart';
import '../../feature/screens/search/view/search.dart';
part 'app_router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: "View,Route", routes: <AutoRoute>[
  AutoRoute(page: HomeView, path: "/", children: [
    AutoRoute(page: FavouriteView, path: "favourite", name: "FavouriteViewTab"),
    AutoRoute(page: HistoryView, path: "history", name: "HistoryViewTab"),
    AutoRoute(
        initial: true,
        page: EmptyPageRouter,
        name: "SearchFullRouteTab",
        maintainState: true,
        path: "SearchFullRoute",
        children: [
          AutoRoute(
            initial: true,
            page: SearchView,
            path: "searchView",
          ),
          AutoRoute(page: SearchDetailView, path: "searchDetailView")
        ]),
  ]),
])

// extend the generated private router

class AppRouter extends _$AppRouter {}

class EmptyPageRouter extends AutoRouter {
  const EmptyPageRouter({super.key});
}
