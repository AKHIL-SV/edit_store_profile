import 'package:edit_store_profile/controller/getx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../constants.dart';

class CheckBoxTile extends StatelessWidget {
  CheckBoxTile({
    super.key,
    required this.title,
    required this.val1,
    required this.val2,
    this.itemNo,
    this.buttonId,
  });
  final String title, val1, val2;
  final int? itemNo, buttonId;
  final controller = Get.put(CheckController());

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
                      checkBoxField('月', 0),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField('火', 1),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField('水', 2),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField('木', 3)
                    ],
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Row(
                    children: [
                      checkBoxField('金', 4),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField('土', 5),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField('日', 6),
                      SizedBox(
                        width: 24.sp,
                      ),
                      checkBoxField('祝', 7)
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
                  checkBoxField(val1, 8*buttonId!),
                  SizedBox(
                    width: 32.sp,
                  ),
                  checkBoxField(val2, 9*buttonId!)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget checkBoxField(String value, int id) {
    return SizedBox(
      height: 24.sp,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 18.sp,
            height: 18.sp,
            child: Transform.scale(
                scale: 0.8.sp,
                child: Obx(
                  () => Checkbox(
                    splashRadius: 0,
                    value: controller.isCheckList(id),
                    onChanged: (value) {
                      if (controller.isCheckList(id)) {
                        controller.removeFromCheckList(id);
                      } else {
                        controller.addToCheckList(id);
                      }
                    },
                    activeColor: orangeColor,
                  ),
                )),
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
