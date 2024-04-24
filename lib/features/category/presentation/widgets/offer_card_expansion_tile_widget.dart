import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/assets.gen.dart';

class OfferCardExpansionTileWidget extends StatelessWidget {
  const OfferCardExpansionTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Amman'),
      tilePadding: EdgeInsets.zero,
      children: [
        Row(
          children: [
            const Text(
              'Unlock Offer',
              style: TextStyle(decoration: TextDecoration.underline, decorationColor: Color(0xff9D00DE), color: Color(0xff9D00DE)),
            ),
            12.horizontalSpace,
            const Icon(Icons.lock_outline),
          ],
        ),
        12.verticalSpace,
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(14.r),
                  gradient: const LinearGradient(
                      begin: AlignmentDirectional.topCenter,
                      end: AlignmentDirectional.bottomCenter,
                      colors: [Color(0xffFD01FF), Color(0xff7D70ED), Color(0xff01D9DC)])),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: 25.w),
                        child: SvgPicture.asset(Assets.logo.path),
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 11.w),
                          height: 140.h,
                          child: const DottedLine(
                              direction: Axis.vertical,
                              dashGapLength: 4,
                              dashColor: Colors.white,
                              lineLength: double.infinity,
                              dashGapColor: Colors.transparent)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            '25% off total bill',
                            style: TextStyle(color: Colors.white),
                          ),
                          const Text('Available from 05:00 PM - 02:00 AM', style: TextStyle(color: Colors.white)),
                          SizedBox(
                            width: 230.w,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [1, 2, 3, 4, 5, 6, 7]
                                    .map((e) => CircleAvatar(
                                        radius: 15.r, backgroundColor: Colors.white, child: Text('S', style: TextStyle(color: Color(0xff9D00DE)))))
                                    .toList()),
                          ),
                          8.verticalSpace,
                          const Text('Min. spend of AED200.', style: TextStyle(color: Colors.white)),
                          const Text('VALID TO 31 DEC 2022', style: TextStyle(color: Colors.white)),
                          4.verticalSpace,
                          const Text(
                            'View offer terms',
                            style: TextStyle(decoration: TextDecoration.underline, color: Colors.white, decorationColor: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            PositionedDirectional(
                top: 68.h,
                start: -30.w,
                child: Container(decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle), width: 50, height: 50)),
            PositionedDirectional(
                top: 0.h,
                end: 2.w,
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    margin: EdgeInsetsDirectional.only(top: 6.h, end: 6.w),
                    padding: EdgeInsets.all(4.r),
                    decoration: BoxDecoration(color: Colors.black.withOpacity(.5), borderRadius: BorderRadiusDirectional.circular(20.r)),
                    child: const Text(
                      'Flash deals',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
            PositionedDirectional(
                top: 68.h,
                end: -30.w,
                child: Container(decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle), width: 50, height: 50))
          ],
        )
      ],
    );
  }
}
