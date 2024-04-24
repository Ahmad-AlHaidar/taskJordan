import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task/features/category/data/models/category_model.dart';
import 'package:task/features/category/presentation/widgets/app_text_field.dart';

import '../pages/sub_category_screen.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    super.key,
    required this.categoryModel, this.isGrid=false,
  });

  final CategoryModel categoryModel;
  final bool isGrid;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(SubCategoryScreen.name),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10.r), color: Color(0xffFBF1FF)),
            child: Column(
              children: [
                18.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 12.h),
                  child: Image.asset(categoryModel.imagePath, width: 50.r, height: 50.r),
                ),
                15.verticalSpace,
                Text(
                  categoryModel.name,
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16.sp),
                )
              ],
            ),
          ),
          PositionedDirectional(
            end: isGrid?8.w:3.w,
            top: 5.h,
            child: CircleAvatar(
              backgroundColor: const Color(0xff9D00DE),
              radius: 12.r,
              child: Text(
                categoryModel.numberOf.toString(),
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.sp, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
