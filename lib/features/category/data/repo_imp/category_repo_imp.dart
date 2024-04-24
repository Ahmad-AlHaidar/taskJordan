import 'package:either_dart/either.dart';
import 'package:injectable/injectable.dart';
import 'package:task/features/category/domain/entity/category_entity.dart';

import '../../../common/api_utils.dart';
import '../../../common/app_exception.dart';
import '../../domain/repo/category_repo.dart';
import '../data_sources/category_remote_data_source.dart';
import '../models/category_model.dart';

@LazySingleton(as: CategoryRepository)
class CategoryRepositoryImp implements CategoryRepository {
  final CategoryRemoteDataSource authRemoteDataSource;

  CategoryRepositoryImp({required this.authRemoteDataSource});

  @override
  FutureResult<List<CategoryEntity>> getCategory()  {
    return toApiResult(() async => await authRemoteDataSource.getCategory());
    // return Right(await authRemoteDataSource.firstStepRe(params));
  }
}
