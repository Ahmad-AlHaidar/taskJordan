import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/features/category/data/models/category_model.dart';
import 'package:task/features/category/presentation/bloc/category_bloc.dart';
import 'package:task/features/common/di/di_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/app_text_field.dart';
import '../widgets/category_card_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  static const String path = '/categoriesScreen';
  static const String name = '/categoriesScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<CategoryBloc>()..add(GetCategoriesEvent()),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              surfaceTintColor: Colors.transparent,
              title: Padding(
                padding: EdgeInsetsDirectional.only(start: 10.w),
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                ),
              ),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(90.h),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                    child: AppTextFormField(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search categories',
                      onChanged: (value) {
                        context.read<CategoryBloc>().add(StartSearchEvent(value ?? ''));
                      },
                    ),
                  )),
            ), // Thi
            body: RefreshIndicator(
               onRefresh: () async=> context.read<CategoryBloc>().add(GetCategoriesEvent()),
              child: BlocBuilder<CategoryBloc, CategoryState>(
                builder: (context, state) {
                  return switch (state.getCategory) {
                    BlocStatus.loading => Center(
                        child: CircularProgressIndicator(),
                      ),
                    BlocStatus.loaded => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 13.w),
                            child: Text(
                              'Popular Categories',
                              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                          34.verticalSpace,
                          SizedBox(
                            height: 150.h,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                List<CategoryModel> categories = state.categoriesList.where((element) => element.isPopular).toList();
                                return Padding(
                                  padding: EdgeInsetsDirectional.only(end: 12.w, start: index == 0 ? 12.w : 0),
                                  child: CategoryCardWidget(categoryModel: categories[index]),
                                );
                              },
                              itemCount: state.categoriesList.where((element) => element.isPopular).toList().length,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                          29.verticalSpace,
                          Padding(
                            padding: EdgeInsetsDirectional.only(start: 13.w),
                            child: Text(
                              'All Categories',
                              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500),
                            ),
                          ),
                          15.verticalSpace,
                          Expanded(
                              child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 145.h, mainAxisSpacing: 12),
                              itemCount: state.categoriesList.length,
                              itemBuilder: (context, index) => CategoryCardWidget(
                                isGrid: true,
                                categoryModel: state.categoriesList[index],
                              ),
                            ),
                          ))
                        ],
                      ),
                    BlocStatus.empty => Center(
                        child: Text('no data found'),
                      ),
                    _ => Center(
                        child: CircularProgressIndicator(),
                      ),
                  };
                },
              ),
            ), // s trailing comma makes auto-formatting nicer for build methods.
          );
        }
      ),
    );
  }
}
