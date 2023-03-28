// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomeView(),
      );
    },
    FavouriteViewTab.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const FavouriteView(),
      );
    },
    HistoryViewTab.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HistoryView(),
      );
    },
    SearchFullRouteTab.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyPageRouter(),
      );
    },
    SearchRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SearchView(),
      );
    },
    SearchDetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SearchDetailView(),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            RouteConfig(
              '#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'SearchFullRoute',
              fullMatch: true,
            ),
            RouteConfig(
              FavouriteViewTab.name,
              path: 'favourite',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              HistoryViewTab.name,
              path: 'history',
              parent: HomeRoute.name,
            ),
            RouteConfig(
              SearchFullRouteTab.name,
              path: 'SearchFullRoute',
              parent: HomeRoute.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: SearchFullRouteTab.name,
                  redirectTo: 'searchView',
                  fullMatch: true,
                ),
                RouteConfig(
                  SearchRoute.name,
                  path: 'searchView',
                  parent: SearchFullRouteTab.name,
                ),
                RouteConfig(
                  SearchDetailRoute.name,
                  path: 'searchDetailView',
                  parent: SearchFullRouteTab.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [HomeView]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [FavouriteView]
class FavouriteViewTab extends PageRouteInfo<void> {
  const FavouriteViewTab()
      : super(
          FavouriteViewTab.name,
          path: 'favourite',
        );

  static const String name = 'FavouriteViewTab';
}

/// generated route for
/// [HistoryView]
class HistoryViewTab extends PageRouteInfo<void> {
  const HistoryViewTab()
      : super(
          HistoryViewTab.name,
          path: 'history',
        );

  static const String name = 'HistoryViewTab';
}

/// generated route for
/// [EmptyPageRouter]
class SearchFullRouteTab extends PageRouteInfo<void> {
  const SearchFullRouteTab({List<PageRouteInfo>? children})
      : super(
          SearchFullRouteTab.name,
          path: 'SearchFullRoute',
          initialChildren: children,
        );

  static const String name = 'SearchFullRouteTab';
}

/// generated route for
/// [SearchView]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: 'searchView',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [SearchDetailView]
class SearchDetailRoute extends PageRouteInfo<void> {
  const SearchDetailRoute()
      : super(
          SearchDetailRoute.name,
          path: 'searchDetailView',
        );

  static const String name = 'SearchDetailRoute';
}
