import 'package:edit_store_profile/constants.dart';
import 'package:edit_store_profile/view/widgets/drop_down_list.dart';
import 'package:edit_store_profile/view/widgets/img_add_field.dart';
import 'package:edit_store_profile/view/widgets/text_edit_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget space = SizedBox(
      height: 16.sp,
    );
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 52.sp,
                padding: EdgeInsets.symmetric(
                  horizontal: 20.w,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 32.sp,
                      width: 32.sp,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(32, 140, 129, 123),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 14.sp,
                        color: lightGray,
                      ),
                    ),
                    Text(
                      '店舗プロフィール編集',
                      style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.notifications_outlined,
                      size: 25.sp,
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1.sp,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 20.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const TextEditFields(
                      title: '店舗名',
                      content: 'Mer キッチン',
                    ),
                    space,
                    const TextEditFields(
                      title: '代表担当者名',
                      content: '林田　絵梨花',
                    ),
                    space,
                    const TextEditFields(
                      title: '店舗電話番号',
                      content: '123 - 4567 8910',
                    ),
                    space,
                    const TextEditFields(
                      title: '店舗住所',
                      content: '大分県豊後高田市払田791-13',
                    ),
                    space,
                    Container(
                      height: 219.sp,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/map.png',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    space,
                    ImageAddField(
                      img1: images[0],
                      img2: images[0],
                      img3: images[5],
                      title: '店舗外観',
                      descp: '最大3枚まで',
                    ),
                    space,
                    ImageAddField(
                      img1: images[1],
                      img2: images[1],
                      img3: images[1],
                      title: '店舗内観',
                      descp: '1枚〜3枚ずつ追加してください',
                    ),
                    space,
                    ImageAddField(
                      img1: images[2],
                      img2: images[3],
                      img3: images[4],
                      title: '料理写真',
                      descp: '1枚〜3枚ずつ追加してください',
                    ),
                    space,
                    ImageAddField(
                      img1: images[3],
                      img2: images[1],
                      img3: images[0],
                      title: 'メニュー写真',
                      descp: '1枚〜3枚ずつ追加してください',
                    ),
                    space,
                    const DropDownList(
                      title: '営業時間',
                      content1: '10 : 00',
                      content2: '20 : 00',
                    ),
                    space,
                    const DropDownList(
                      title: 'ランチ時間',
                      content1: '11 : 00 ',
                      content2: '15 : 00',
                    ),
                    space,
                    const DropDownList(
                      title: '予算',
                      content1: '¥ 1,000',
                      content2: '¥ 2,000',
                      arrow: false,
                    ),
                    space,
                    const TextEditFields(
                      title: '来店プレゼント名',
                      content: 'いちごクリームアイスクリーム, ジュース',
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      height: 46.sp,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xffEE7D42).withOpacity(0.5),
                            const Color(0xffFFC8AB)..withOpacity(0.5),
                          ],
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '編集を保存',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
