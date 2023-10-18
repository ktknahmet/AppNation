
import 'dart:convert';

import 'package:app_nation/model/DogList.dart';
import 'package:app_nation/model/DogModel.dart';
import 'package:app_nation/service/ApiService.dart';
import 'package:app_nation/utils/WidgetExtention.dart';
import 'package:app_nation/utils/constant/AppColor.dart';
import 'package:app_nation/utils/constant/StringUtils.dart';
import 'package:app_nation/utils/event/generateEvent/GenerateEvent.dart';
import 'package:app_nation/utils/state/generateState/GenerateState.dart';
import 'package:app_nation/utils/style/CustomTextStyle.dart';
import 'package:app_nation/view/homepage/HomePage.dart';
import 'package:app_nation/view/settings/settingsPage.dart';
import 'package:app_nation/viewModel/GenerateBloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';

Size sizeWidth(BuildContext context) {
  Size mediaSize = MediaQuery.of(context).size;
  return mediaSize;
}

Future<String> checkVersion() async{
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  String version = packageInfo.version;
  String buildNumber = packageInfo.buildNumber;

  String result = "v$version - $buildNumber";
  return result;
}
List tabs = [
  const HomePage(),
  const SettingsPage(),
];

DogList resultBreed(String dogName,List<String> breed,List<String> subBreed){

  //dogList tüm köpek listesi  breed resim linki köpek cinsine göre

  String firstLink = breed.isNotEmpty ? breed[0] : "";

  DogList dogs = DogList(imageUrl: firstLink,breed: dogName,subBreed: subBreed);
  return dogs;
}

List<String> dogName(DogModel dogModel) {
  List<String> dogs=[];
  Map<String, dynamic> dogMap = dogModel.toJson();
  String dogJson = json.encode(dogMap);
  Map<String, dynamic> data = json.decode(dogJson);

  Map<String, dynamic> message = data["message"];

  for (var key in message.keys) {
    dogs.add(key);

  }
  return dogs;
}
showDetails(BuildContext context,DogList dogList) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      context: context,
      constraints: BoxConstraints(
        maxWidth:  sizeWidth(context).width*0.85,
      ),
      isScrollControlled: true,
      builder: (context) {
        return  FractionallySizedBox(
          heightFactor: 0.9, // Yükseklik faktörü
          child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)
                      ), // Image border
                      child: SizedBox.fromSize(
                        child: CachedNetworkImage(
                          width:sizeWidth(context).width,
                          height:sizeWidth(context).height*0.30,
                          fit: BoxFit.cover,
                          imageUrl: dogList.imageUrl!,
                          placeholder: (context, url) => spinKit(context), // Yükleme sırasında gösterilecek widget
                          errorWidget: (context, url, error) => const Icon(Icons.error), // Hata durumunda gösterilecek widget
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                          padding: const EdgeInsets.only(left: 8),
                          child: GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child:Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: AppColor.white,
                                ),
                                width: 32,
                                height: 32,

                                child: const Icon(Icons.close,color: AppColor.black,),
                              )
                          )

                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16,),
                Text(StringUtils.breed,style: CustomTextStyle().bold16(AppColor.blue),),
                const SizedBox(height: 8,),
                dividerStyle(),
                Text(dogList.breed!,style: CustomTextStyle().bold16(AppColor.black),),
                const SizedBox(height: 16,),
                Text(StringUtils.subBreed,style: CustomTextStyle().bold16(AppColor.blue),),
                const SizedBox(height: 8,),
                dividerStyle(),
                dogList.subBreed!.isEmpty ?
                    Container(
                      height: sizeWidth(context).height*0.35,
                    )
                    : SizedBox(
                  height: sizeWidth(context).height*0.35,
                  child: ListView.builder(
                    itemCount: dogList.subBreed!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8,right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("${dogList.subBreed![index]}",style: CustomTextStyle().bold16(AppColor.black)),
                            const SizedBox(height: 8,),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: SizedBox(
                      width: sizeWidth(context).width,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: (){
                            generateDialog(context,dogList.breed!);
                           },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                  )
                              )
                          ),
                          child:Text(StringUtils.generate,style: CustomTextStyle().bold16(AppColor.white),)),
                    ),
                  ),
                )
              ],

          ),
        );
      });
}

generateDialog(BuildContext context,String url){
  showDialog(
      context: context,
      builder: (BuildContext context){

        return BlocProvider<GenerateBloc>(
          create: (BuildContext context) => GenerateBloc(ApiService(Dio()))..add(GenerateLoadEvent(url)
          ),
          child: AlertDialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BlocBuilder<GenerateBloc,GenerateState>(
                  builder: (context,state){
                    if(state is GenerateLoadingState){
                      return spinKit(context);
                    }else if(state is GenerateLoadedState){
                      if(state.generateList.message!.isEmpty){
                        return Container();
                      }else{
                        return Column(
                          children: [
                            ClipRRect(
                              borderRadius:  BorderRadius.circular(8.0),
                              child: SizedBox.fromSize(
                                child: CachedNetworkImage(
                                  width:sizeWidth(context).width,
                                  height:sizeWidth(context).height*0.30,
                                  fit: BoxFit.cover,
                                  imageUrl: state.generateList.message!.toString(),
                                  placeholder: (context, url) => spinKit(context), // Yükleme sırasında gösterilecek widget
                                  errorWidget: (context, url, error) => const Icon(Icons.error), // Hata durumunda gösterilecek widget
                                ),
                              ),
                            ),
                            const SizedBox(height: 16,),
                            GestureDetector(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 32,
                                  height: 32,
                                  color: AppColor.white,
                                  child: const Icon(Icons.close,color: AppColor.black,),
                                )
                            )
                          ],
                        );
                      }
                    }
                    return Container();
                  },
                )
              ],
            ),

          ),
        );
      }
  );
}

List<DogList> searchResult(String keyword,List<DogList> list){
  List<DogList> dogList =[];
  if(keyword.isEmpty){
    dogList = list;
    return dogList;
  }else{
    dogList = list
        .where((dog) =>
        dog.breed!.toLowerCase().contains(keyword.toLowerCase()))
        .toList();
    return dogList;

  }
}