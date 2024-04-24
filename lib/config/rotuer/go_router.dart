import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:task/features/category/presentation/pages/sub_category_screen.dart';
import 'package:task/features/category/presentation/pages/variant_screen.dart';

import '../../features/category/presentation/pages/categories_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

GlobalKey<NavigatorState> get rootNavigatorKey => _rootNavigatorKey;

class GRouter {
  static GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    initialLocation: CategoriesScreen.path,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
          path: CategoriesScreen.path,
          name: CategoriesScreen.name,
          pageBuilder: (context, state) => _builderPage(child: const CategoriesScreen(), state: state),
          routes: [
            GoRoute(
              path: SubCategoryScreen.path,
              name: SubCategoryScreen.name,
              pageBuilder: (context, state) => _builderPage(child: const SubCategoryScreen(), state: state),
            ),
            GoRoute(
              path: VariantScreen.path,
              name: VariantScreen.name,
              pageBuilder: (context, state) => _builderPage(child: const VariantScreen(), state: state),
            ),
          ]),
    ],
    // errorBuilder: (context, state) => const ErrorScreen(),
  );

  static Page<dynamic> _builderPage<T>({required Widget child, required GoRouterState state}) {
    if (Platform.isIOS) {
      return CupertinoPage<T>(child: child, key: state.pageKey);
    } else {
      return MaterialPage<T>(child: child, key: state.pageKey);
    }
  }
}
