import 'app_exception.dart';

abstract class UseCase<T, Params> {
  FutureResult<T> call(Params params);
}

class NoParams {}

class PaginationParams {
  final bool EnablePagination;
  final int PageNumber;

  PaginationParams({this.EnablePagination = true, required this.PageNumber});

  Map<String, dynamic> toMap() {
    return {
      'EnablePagination': this.EnablePagination,
      'PageNumber': this.PageNumber,
    };
  }
}
