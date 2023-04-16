import 'package:edit_store_profile/constants.dart';
import 'package:edit_store_profile/view/widgets/check_box_tile.dart';
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                    Stack(
                      children: [
                        Container(
                          height: 32.sp,
                          width: 32.sp,
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.notifications_outlined,
                            size: 25.sp,
                          ),
                        ),
                        Positioned(
                          right: 0.sp,
                          top: 0.sp,
                          child: Container(
                            height: 16.sp,
                            width: 16.sp,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: orangeColor,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '99+',
                              style: TextStyle(
                                  fontSize: 7.sp,
                                  color: white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    const CheckBoxTile(
                      title: '',
                      val1: '',
                      val2: '',
                      itemNo: 8,
                    ),
                    space,
                    const DropDownList(
                      title: '料理カテゴリー',
                      content1: '料理カテゴリー選択',
                      content2: '',
                      count: 1,
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
                      title: 'キャッチコピー',
                      content: '美味しい！リーズナブルなオムライスランチ！',
                      size: 15,
                    ),
                    space,
                    const TextEditFields(
                      title: '座席数',
                      content: '40席',
                    ),
                    space,
                    SizedBox(
                      height: 289.sp,
                      width: 292.sp,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CheckBoxTile(
                            title: '喫煙席',
                            val1: '有',
                            val2: '有',
                          ),
                          const CheckBoxTile(
                            title: '喫煙席',
                            val1: '有',
                            val2: '有',
                          ),
                          const CheckBoxTile(
                            title: '来店プレゼント',
                            val1: '有（最大３枚まで）',
                            val2: '無',
                          ),
                          SizedBox(
                            height: 91.sp,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                imgContainer(images[8]),
                                SizedBox(
                                  width: 8.w,
                                ),
                                imgContainer(images[7]),
                                SizedBox(
                                  width: 8.w,
                                ),
                                imgContainer(images[6])
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    space,
                    const TextEditFields(
                      title: '来店プレゼント名',
                      content: 'いちごクリームアイスクリーム, ジュース',
                    ),
                    SizedBox(
                      height: 40.sp,
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

  Widget imgContainer(String img) {
    return Stack(
      children: [
        Container(
          height: 91.sp,
          width: 91.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          right: 1.sp,
          top: 1.sp,
          child: Icon(
            Icons.close,
            color: const Color(0xffE7E7E7),
            size: 25.sp,
          ),
        )
      ],
    );
  }
}
