import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';

class DropDownList extends StatelessWidget {
  const DropDownList(
      {super.key,
      required this.title,
      required this.content1,
      required this.content2,
      this.arrow});
  final String title, content1, content2;
  final bool? arrow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64.sp,
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
            height: 8.sp,
          ),
          Expanded(
              child: Row(
            children: [
              dropDownContainer(content1),
              SizedBox(
                width: 8.w,
              ),
              Text(
                '〜',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 8.w,
              ),
              dropDownContainer(content2),
            ],
          ))
        ],
      ),
    );
  }

  Widget dropDownContainer(String content) {
    return Container(
      width: 124.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE8E8E8),
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      padding: EdgeInsets.only(left: 10.w, right: 10.w),
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            content,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xff454545),
            ),
          ),
          Visibility(
            visible: arrow != false,
            child: Icon(
              Icons.keyboard_arrow_down,
              size: 26.sp,
              color: const Color(0xffC7C4C0),
            ),
          )
        ],
      ),
    );
  }
}
