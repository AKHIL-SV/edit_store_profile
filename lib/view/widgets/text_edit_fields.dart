import 'package:edit_store_profile/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextEditFields extends StatelessWidget {
  const TextEditFields({
    super.key,
    required this.title,
    required this.content,
  });
  final String title, content;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '*',
                style: TextStyle(
                  color: red,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          SizedBox(
            height: 4.sp,
            width: double.infinity,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE8E8E8),
                ),
                borderRadius: BorderRadius.circular(5.r),
              ),
              padding: EdgeInsets.only(left: 10.w),
              alignment: Alignment.centerLeft,
              child: Text(
                content,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
