// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../category/data/data_sources/category_remote_data_source.dart'
    as _i3;
import '../../category/data/repo_imp/category_repo_imp.dart' as _i5;
import '../../category/domain/repo/category_repo.dart' as _i4;
import '../../category/domain/use_case/get_category_use_case.dart' as _i6;
import '../../category/presentation/bloc/category_bloc.dart' as _i7;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.CategoryRemoteDataSource>(
      () => _i3.CategoryRemoteDataSource());
  gh.lazySingleton<_i4.CategoryRepository>(() => _i5.CategoryRepositoryImp(
      authRemoteDataSource: gh<_i3.CategoryRemoteDataSource>()));
  gh.factory<_i6.GetCategoryUseCase>(() =>
      _i6.GetCategoryUseCase(categoryRepository: gh<_i4.CategoryRepository>()));
  gh.lazySingleton<_i7.CategoryBloc>(
      () => _i7.CategoryBloc(gh<_i6.GetCategoryUseCase>()));
  return getIt;
}
