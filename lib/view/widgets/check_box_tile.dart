import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';

class CheckBoxTile extends StatelessWidget {
  const CheckBoxTile({
    super.key,
    required this.title,
    required this.val1,
    required this.val2,
    this.itemNo,
  });
  final String title, val1, val2;
  final int? itemNo;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: itemNo != 8,
      replacement: SizedBox(
        height: 86.sp,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '定休日',
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
              child: Column(
                children: [
                  Row(
                    children: [
                      checkBoxField(false, '月'),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField(false, '火'),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField(false, '水'),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField(false, '木')
                    ],
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Row(
                    children: [
                      checkBoxField(false, '金'),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField(true, '土'),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField(true, '日'),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField(true, '祝')
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      child: SizedBox(
        height: 50.sp,
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
                  checkBoxField(true, val1),
                  SizedBox(
                    width: 32.sp,
                  ),
                  checkBoxField(false, val2)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget checkBoxField(bool orangeBox, String value) {
    return SizedBox(
      height: 24.sp,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          orangeBox
              ? Icon(
                  Icons.check_box,
                  size: 18.sp,
                  color: orangeColor,
                )
              : Icon(
                  Icons.check_box_outline_blank,
                  size: 18.sp,
                  color: const Color(0xffE8E8E8),
                ),
          SizedBox(
            width: 8.sp,
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
