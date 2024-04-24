part of 'category_bloc.dart';

@immutable
class CategoryEvent {}
class GetCategoriesEvent extends CategoryEvent {}
class StartSearchEvent extends CategoryEvent {
  final String word;

  StartSearchEvent(this.word);
}
