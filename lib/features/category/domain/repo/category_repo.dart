import '../../../common/app_exception.dart';
import '../../data/models/category_model.dart';

abstract class CategoryRepository {
  FutureResult<List<CategoryModel>> getCategory();
}
