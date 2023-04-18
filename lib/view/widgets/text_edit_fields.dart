import 'package:edit_store_profile/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextEditFields extends StatelessWidget {
  const TextEditFields({
    super.key,
    required this.title,
    required this.content,
    this.size,
  });
  final String title, content;
  final int? size;

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
            child: TextFormField(
              initialValue: content,
              style: size == 15
                  ? TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87)
                  : TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
              cursorColor: orangeColor,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: orangeColor,
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                contentPadding: EdgeInsets.fromLTRB(10.w, 7.sp, 0, 7.sp),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Color(0xffE8E8E8),
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
