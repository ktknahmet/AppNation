
import 'package:app_nation/utils/Extention.dart';
import 'package:app_nation/utils/WidgetExtention.dart';
import 'package:app_nation/utils/constant/AppColor.dart';
import 'package:app_nation/utils/constant/StringUtils.dart';
import 'package:app_nation/utils/state/versionState/VersionState.dart';
import 'package:app_nation/utils/style/CustomTextStyle.dart';
import 'package:app_nation/viewModel/VersionCheckCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  @override
   build(BuildContext context) {

    return Scaffold(

      body: SizedBox(
        height: sizeWidth(context).height,
        child: Padding(
          padding: const EdgeInsets.only(top: 60,left: 16,right: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/info.png",height: 32,),
                      const SizedBox(width: 4,),
                      Text(StringUtils.help,style: CustomTextStyle().bold16(AppColor.black),),
                    ],
                  ),
                  Image.asset("assets/arrowRight.png",height: 16,)
                ],
              ),
              dividerStyle(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/rate.png",height: 32,),
                      const SizedBox(width: 4,),
                      Text(StringUtils.rateUs,style: CustomTextStyle().bold16(AppColor.black),),
                    ],
                  ),
                  Image.asset("assets/arrowRight.png",height: 16,)
                ],
              ),
              dividerStyle(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/share.png",height: 32,),
                      const SizedBox(width: 4,),
                      Text(StringUtils.shareWithFriends,style: CustomTextStyle().bold16(AppColor.black),),
                    ],
                  ),
                  Image.asset("assets/arrowRight.png",height: 16,)
                ],
              ),
              dividerStyle(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/terms.png",height: 32,),
                      const SizedBox(width: 4,),
                      Text(StringUtils.termsOfUse,style: CustomTextStyle().bold16(AppColor.black),),
                    ],
                  ),
                  Image.asset("assets/arrowRight.png",height: 16,)
                ],
              ),
              dividerStyle(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/policy.png",height: 32,),
                      const SizedBox(width: 4,),
                      Text(StringUtils.privacyPolicy,style: CustomTextStyle().bold16(AppColor.black),),
                    ],
                  ),
                  Image.asset("assets/arrowRight.png",height: 16,)
                ],
              ),
              dividerStyle(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/os.png",height: 32,),
                      const SizedBox(width: 4,),
                      Text(StringUtils.osVersion,style: CustomTextStyle().bold16(AppColor.black),),
                    ],
                  ),
                  BlocBuilder<VersionBloc,VersionState>(
                    builder: (context,state){
                      if(state is VersionLoadedState) {
                        return Text(state.v, style: CustomTextStyle().thin13(
                            AppColor.secondaryLight),

                        );
                      }
                      return Container();
                    },
                  )
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
