import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:task/features/category/presentation/pages/variant_screen.dart';

import '../../../../generated/assets.gen.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  static const String path = 'subCategoryScreen';
  static const String name = 'subCategoryScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food'),
        centerTitle: false,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 170.h,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsetsDirectional.only(end: 10.w, start: index == 0 ? 10.w : 0.w),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20.r),
                      decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10.r), color: Color(0xffFBF1FF)),
                      child: Center(
                        child: Assets.burger.image(),
                      ),
                    ),
                    Text('Borger')
                  ],
                ),
              ),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
            ),
          ),
          19.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                Expanded(child: Text('All Offers For Food, Drinks & Restaurants')),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6.r),
                      decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10.r), color: Color(0xffFBF1FF)),
                      child: SvgPicture.asset(Assets.search),
                    ),
                    9.horizontalSpace,
                    SizedBox(
                      width: 60.w,
                      child: DropdownButton(
                        value: 1,
                        elevation: 0,
                        underline: const SizedBox.shrink(),
                        isExpanded: true,
                        items: [
                          DropdownMenuItem(value: 1, child: Text('sort')),
                          DropdownMenuItem(value: 2, child: Text('sort up')),
                          DropdownMenuItem(value: 3, child: Text('sort down')),
                        ],
                        onChanged: (value) {},
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          16.verticalSpace,
          SizedBox(
              height: 40.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsetsDirectional.only(start: index == 0 ? 8.w : 0, end: 8.w),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 17.w,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffFBF1FF),
                      borderRadius: BorderRadiusDirectional.circular(10.r),
                    ),
                    child: Center(child: Text(index == 0 ? 'All' : 'A')),
                  ),
                ),
                itemCount: 10,
              )),
          24.verticalSpace,
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView.builder(
              itemBuilder: (context, index) => InkWell(
                onTap: () => context.pushNamed(VariantScreen.name),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 14.h),
                      padding: EdgeInsets.all(2.r),
                      decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10.r), border: Border.all(color: Colors.grey)),
                      child: Assets.resutrant.image(),
                    ),
                    14.horizontalSpace,
                    Text('FreshDirect')
                  ],
                ),
              ),
              itemCount: 5,
            ),
          ))
        ],
      ),
    );
  }
}
