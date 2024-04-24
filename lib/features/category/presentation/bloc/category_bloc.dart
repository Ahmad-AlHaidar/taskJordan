import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:task/features/common/usecase.dart';

import '../../data/models/category_model.dart';
import '../../domain/use_case/get_category_use_case.dart';

part 'category_event.dart';

part 'category_state.dart';

@lazySingleton
class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoryUseCase getCategoryUseCase;

  CategoryBloc(
    this.getCategoryUseCase,
  ) : super(const CategoryState()) {
    on<GetCategoriesEvent>(_onGetCategoriesEvent);
    on<StartSearchEvent>(_onStartSearchEvent);
  }

  FutureOr<void> _onGetCategoriesEvent(GetCategoriesEvent event, Emitter<CategoryState> emit) async {
    emit(state.copyWith(getCategory: BlocStatus.loading));
    final result = await getCategoryUseCase(NoParams());
    result.fold(
      (left) => emit(state.copyWith(getCategory: BlocStatus.error)),
      (right) {
        if (right.isEmpty) {
          emit(state.copyWith(getCategory: BlocStatus.empty));
        } else {
          emit(state.copyWith(getCategory: BlocStatus.loaded, categoriesList: right));
        }
      },
    );
  }

  FutureOr<void> _onStartSearchEvent(StartSearchEvent event, Emitter<CategoryState> emit) {
    emit(state.copyWith(
        categoriesList: List.of(state.categoriesList)
          ..sort((a, b) {
            return a.name.toLowerCase().compareTo(event.word.toLowerCase());
          })));
  }
}
