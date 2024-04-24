
import '../../../common/app_exception.dart';
import '../../../common/usecase.dart';
import '../../data/models/category_model.dart';
import '../repo/category_repo.dart';
import 'package:injectable/injectable.dart';
@injectable
class GetCategoryUseCase implements UseCase<List<CategoryModel>, NoParams> {
  final CategoryRepository categoryRepository;

  GetCategoryUseCase({required this.categoryRepository});

  @override
  FutureResult<List<CategoryModel>> call(params) async {
    return categoryRepository.getCategory();
  }
}

