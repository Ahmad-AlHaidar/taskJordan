import '../../../common/app_exception.dart';
import '../../../common/usecase.dart';
import '../../data/models/category_model.dart';
import '../entity/category_entity.dart';
import '../repo/category_repo.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoryUseCase implements UseCase<List<CategoryEntity>, NoParams> {
  final CategoryRepository categoryRepository;

  GetCategoryUseCase({required this.categoryRepository});

  @override
  FutureResult<List<CategoryEntity>> call(params) async {
    return categoryRepository.getCategory();
  }
}
