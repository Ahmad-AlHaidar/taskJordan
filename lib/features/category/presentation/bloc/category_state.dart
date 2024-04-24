part of 'category_bloc.dart';

enum BlocStatus { init, loading, loaded, error, empty }

@immutable
class CategoryState {
  final BlocStatus getCategory;
  final List<CategoryEntity> categoriesList;

  const CategoryState({
    this.getCategory = BlocStatus.init,
    this.categoriesList = const [],
  });

  CategoryState copyWith({
    BlocStatus? getCategory,
    List<CategoryEntity>? categoriesList,
  }) {
    return CategoryState(
      getCategory: getCategory ?? this.getCategory,
      categoriesList: categoriesList ?? this.categoriesList,
    );
  }
}
