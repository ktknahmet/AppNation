
import 'package:app_nation/utils/constant/AppColor.dart';
import 'package:app_nation/utils/style/CustomTextStyle.dart';
import 'package:flutter/material.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget{
  final String name;
  const DefaultAppBar({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: preferredSize.height,
      child: AppBar(
        leading:const BackButton(color: AppColor.black),
        elevation: 0,
        backgroundColor: AppColor.white,
        title: Text(name, style: CustomTextStyle().bold16(AppColor.black)),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(96);
}