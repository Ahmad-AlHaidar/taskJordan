import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Padding(
        padding: EdgeInsetsDirectional.only(end: 14.w),
        child: Column(
          children: [
            14.verticalSpace,
            Container(
              width: 80.w,
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
              decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(8.r), border: Border.all(color: Color(0xff9D00DE))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.star_border_purple500_outlined,
                    color: Color(0xff9D00DE),
                  ),
                  Text(
                    '4.1',
                    style: TextStyle(color: Color(0xff9D00DE)),
                  )
                ],
              ),
            ),
            4.verticalSpace,
            const Text(
              '5k+ ratings',
              style: TextStyle(color: Color(0xff9D00DE)),
            )
          ],
        ),
      ),
    );
  }
}
