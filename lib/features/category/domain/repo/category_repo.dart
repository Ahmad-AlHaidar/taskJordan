import '../../../common/app_exception.dart';
import '../../data/models/category_model.dart';
import '../entity/category_entity.dart';

abstract class CategoryRepository {
  FutureResult<List<CategoryEntity>> getCategory();
}
