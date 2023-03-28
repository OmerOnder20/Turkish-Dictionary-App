import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tdk_app/product/navigator/app_router.dart';
import 'package:provider/provider.dart';

import 'feature/screens/detail/viewModel/kelime_view_model.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<KelimeProvider>(
      create: (context) => KelimeProvider(),
      builder: (context, child) => MyApp(),
    )
  ]));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
