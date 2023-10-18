import 'package:app_nation/utils/Extention.dart';
import 'package:app_nation/utils/constant/AppColor.dart';
import 'package:app_nation/utils/constant/StringUtils.dart';
import 'package:app_nation/utils/style/CustomTextStyle.dart';
import 'package:app_nation/utils/style/MyCustomPainter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget navigationBar(){

  return  StatefulBuilder(
    builder: (BuildContext context ,setState){
      return ClipPath(
        clipper: CustomShapeClipper(),
        child: Container(
            width: sizeWidth(context).width,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              border: Border.all(width: 2,color: AppColor.bottomColor),
              color: AppColor.bottomColor,
            ),
            child:Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/${StringUtils.mainHome}');
                    },
                    child: Column(
                      children: [
                        Image.asset("assets/home.png",height: 32,),
                        Text(StringUtils.home,style: CustomTextStyle().bold16(AppColor.blue),)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                    child: VerticalDivider(
                      width: 2,
                      color: AppColor.verticalDivider,
                      thickness: 2,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/${StringUtils.settings}');
                    },
                    child: Column(
                      children: [
                        Image.asset("assets/settings.png",height: 32,),
                        Text(StringUtils.settings,style: CustomTextStyle().bold16(AppColor.black),)
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
      );
    },
  );
}
Widget dividerStyle(){
  return const Padding(
    padding: EdgeInsets.only(top: 8,bottom: 8),
    child: Divider(
      color: AppColor.divider,
      thickness: 1,
      height: 2,
    ),
  );
}
Widget spinKit(BuildContext context) {
  return  const Center(
    child: SpinKitRing(
      color:AppColor.black,
      size: 30.0,

    ),
  );
}
Widget emptyView(BuildContext context) {
  return SizedBox(
    width: sizeWidth(context).width*0.80,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(StringUtils.noResultFound, style: CustomTextStyle().bold16(AppColor.black),),
        Text(StringUtils.trySearch, style: CustomTextStyle().bold16(AppColor.divider))
      ],
    ),
  );
}