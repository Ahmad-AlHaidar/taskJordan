import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VariantInformationWidget extends StatelessWidget {
  const VariantInformationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Food '),
          5.verticalSpace,
          const Text('Canton - Amman'),
          5.verticalSpace,
          Row(
            children: [
              const Text('Chinese # Chicken # Salads # Soup'),
              11.horizontalSpace,
              CircleAvatar(
                radius: 3.r,
                backgroundColor: Colors.black,
              ),
              6.horizontalSpace,
              const Text(
                'All tags',
                style: TextStyle(decoration: TextDecoration.underline, color: Color(0xff9D00DE), decorationColor: Color(0xff9D00DE)),
              ),
            ],
          ),
          30.verticalSpace,
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // spacing: 32.w,
              children: [1, 2, 3, 4, 5, 6]
                  .map(
                    (e) => const Column(
                      children: [
                        Icon(Icons.email_outlined),
                        Text('Email'),
                      ],
                    ),
                  )
                  .toList()),
          47.verticalSpace,
        ],
      ),
    );
  }
}
