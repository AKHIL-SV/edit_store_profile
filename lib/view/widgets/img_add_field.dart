import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';

class ImageAddField extends StatelessWidget {
  const ImageAddField(
      {super.key,
      required this.img1,
      required this.img2,
      required this.img3,
      required this.title,
      required this.descp});
  final String img1, img2, img3, title, descp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 117.sp,
      child: Column(
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
              ),
              Text(
                '  ($descp)',
                style: TextStyle(
                  color: const Color(0xff9C9896),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 91.sp,
                  width: 91.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    image: DecorationImage(
                      image: AssetImage(img1),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  height: 91.sp,
                  width: 91.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    image: DecorationImage(
                      image: AssetImage(img2),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Container(
                  height: 91.sp,
                  width: 91.sp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    image: DecorationImage(
                      image: AssetImage(img3),
                      fit: BoxFit.fill,
                    ),
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
