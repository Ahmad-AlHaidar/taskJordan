import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:task/features/category/presentation/widgets/offer_card_expansion_tile_widget.dart';
import 'package:task/features/category/presentation/widgets/rating_widget.dart';
import 'package:task/features/category/presentation/widgets/variant_information_widget.dart';

import '../../../../generated/assets.gen.dart';

class VariantScreen extends StatelessWidget {
  const VariantScreen({super.key});

  static const String path = 'variantScreen';
  static const String name = 'variantScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 288.h,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned.fill(child: SizedBox(width: 1.sw, child: Assets.resturantDetail.image(fit: BoxFit.fill))),
                  PositionedDirectional(
                      start: 15.w,
                      top: 15.h,
                      child: InkWell(
                        onTap: () => context.pop(),
                        child: CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(.5),
                          child: const Icon(Icons.arrow_back, color: Colors.white),
                        ),
                      )),
                  PositionedDirectional(
                    start: -0,
                    bottom: -30,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(start: 10.w),
                      child: Container(
                        padding: EdgeInsets.all(3.r),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(16.r),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey, width: 1)),
                        width: 90.r,
                        height: 90.r,
                        child: ClipRRect(
                          borderRadius: BorderRadiusDirectional.circular(12.r),
                          child: Assets.logo.image(),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: RatingWidget(),
          ),
          const SliverToBoxAdapter(
            child: VariantInformationWidget(),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Divider(
                  thickness: 5,
                  color: Colors.grey.shade300,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 14.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
                            decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(8.r), color: Color(0xffFBF1FF)),
                            child: const Text(
                              'Available Offers',
                              style: TextStyle(color: Color(0xff9D00DE)),
                            ),
                          )
                        ],
                      ),
                      10.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Available Offers'),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                'How to use offers',
                                style: TextStyle(color: Colors.grey),
                              ),
                              4.horizontalSpace,
                              Container(
                                decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Center(
                                      child: Icon(
                                    Icons.question_mark,
                                    color: Colors.grey,
                                    size: 17.r,
                                  )),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      ...[1, 2, 3]
                          .map(
                            (e) => Theme(
                              data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                              child: const OfferCardExpansionTileWidget(),
                            ),
                          )
                          .toList()
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
