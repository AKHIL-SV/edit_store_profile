import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';

class DropDownList extends StatefulWidget {
  const DropDownList(
      {super.key,
      required this.title,
      required this.content1,
      required this.content2,
      this.arrow,
      this.count});
  final String title, content1, content2;
  final bool? arrow;
  final int? count;

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String? value1, value2;
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
                widget.title,
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
            child: Visibility(
              visible: widget.count != 1,
              replacement: dropDownContainer(
                widget.content1,
                194,
                1,
                color: const Color(0xffC7C4C0),
              ),
              child: Row(
                children: [
                  dropDownContainer(widget.content1, 124, 1),
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
                  dropDownContainer(widget.content2, 124, 2),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget dropDownContainer(String content, int width, int id,
      {Color color = const Color(0xff454545)}) {
    return Container(
      width: width.w,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE8E8E8),
        ),
        borderRadius: BorderRadius.circular(5.r),
      ),
      padding: widget.count != 1
          ? EdgeInsets.only(left: 20.w, right: 20.w)
          : EdgeInsets.only(left: 8.w, right: 8.w),
      child: widget.arrow != false
          ? DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: id == 1 ? value1 : value2,
                isExpanded: true,
                hint: Text(
                  content,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: color,
                  ),
                ),
                items: widget.count == 1
                    ? dropdownnames.map(buildMenuItems).toList()
                    : dropdownitems.map(buildMenuItems).toList(),
                onChanged: (value) =>
                    setState(() => id == 1 ? value1 = value : value2 = value),
                icon: Icon(
                  Icons.keyboard_arrow_down,
                  size: 26.sp,
                  color: const Color(0xffC7C4C0),
                ),
              ),
            )
          : TextFormField(
              initialValue: content,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: color,
              ),
              cursorColor: orangeColor,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
                contentPadding: EdgeInsets.fromLTRB(10.w, 7.sp, 0, 7.sp),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            ),
    );
  }

  DropdownMenuItem<String> buildMenuItems(String items) => DropdownMenuItem(
        value: items,
        child: Text(
          items,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff454545),
          ),
        ),
      );
}
