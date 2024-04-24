import 'dart:async';

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/config/rotuer/go_router.dart';
import 'package:task/features/category/presentation/widgets/app_text_field.dart';
import 'package:task/features/category/presentation/widgets/category_card_widget.dart';
import 'package:task/features/category/presentation/pages/variant_screen.dart';
import 'package:task/features/category/presentation/pages/sub_category_screen.dart';

import 'features/category/presentation/pages/categories_screen.dart';
import 'features/common/di/di_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await configureDependencies();
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 891),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff9D00DE)),
          useMaterial3: true,
        ),
        routerConfig: GRouter.router,

        // home: const CategoriesScreen(),
      ),
    );
  }
}
