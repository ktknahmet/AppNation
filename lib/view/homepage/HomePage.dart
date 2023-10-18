
import 'package:app_nation/model/TextFieldState.dart';
import 'package:app_nation/utils/event/imgEvent/DogEvent.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:app_nation/utils/Extention.dart';
import 'package:app_nation/utils/WidgetExtention.dart';
import 'package:app_nation/utils/constant/AppColor.dart';
import 'package:app_nation/utils/constant/StringUtils.dart';
import 'package:app_nation/utils/state/imgState/DogState.dart';
import 'package:app_nation/utils/style/CustomTextStyle.dart';
import 'package:app_nation/viewModel/TextFieldBloc.dart';
import 'package:app_nation/viewModel/DogBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 String query="";
  @override
  Widget build(BuildContext context) {

    final textFieldBloc = context.read<TextFieldBloc>();

    return SizedBox(
      height: sizeWidth(context).height,
      child: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: SingleChildScrollView(
          child: BlocProvider<DogBloc>(
          create: (BuildContext context) => DogBloc(query)..add(DogLoadEvent()),
           child: BlocBuilder<DogBloc,DogState>(
              builder: (context,bloc){
                if(bloc is DogLoadedState){
                  return Column(
                    children: [
                      SizedBox(
                          height: sizeWidth(context).height*0.70,
                          child:searchResult(query, bloc.dogBreed).isEmpty
                              ? emptyView(context)
                              : ListView.builder(
                            itemCount: (searchResult(query,bloc.dogBreed).length/ 2).ceil(),
                            itemBuilder: (context, index) {
                              int startIndex = index * 2; // İlk resmin indeksi
                              int endIndex = startIndex + 1; // İkinci resmin indeksi
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(16), // Resim kenarı
                                            child: SizedBox.fromSize(
                                              child: GestureDetector(
                                                onTap: (){
                                                  showDetails(context, searchResult(query,bloc.dogBreed)[startIndex]);
                                                },
                                                child: CachedNetworkImage(
                                                  width: sizeWidth(context).width * 0.40,
                                                  height: sizeWidth(context).height * 0.25,
                                                  fit: BoxFit.cover,
                                                  imageUrl: searchResult(query,bloc.dogBreed)[startIndex].imageUrl!,
                                                  placeholder: (context, url) => spinKit(context), // Yükleme sırasında gösterilecek widget
                                                  errorWidget: (context, url, error) => GestureDetector(
                                                    onTap: (){

                                                    },
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        const Icon(Icons.error),
                                                        Text(StringUtils.photoNotFound,style: CustomTextStyle().medium14(AppColor.black),
                                                        ),
                                                      ],
                                                    ),
                                                  ), // Hata durumunda gösterilecek widget
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 10,
                                            bottom: 10,
                                            child: Container(
                                              padding: const EdgeInsets.only(left: 8),
                                              child: Text(searchResult(query,bloc.dogBreed)[startIndex].breed!, style: CustomTextStyle().bold16(AppColor.white)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      if (endIndex < searchResult(query,bloc.dogBreed).length)
                                        GestureDetector(
                                          onTap: () {
                                            showDetails(context, searchResult(query,bloc.dogBreed)[endIndex]);
                                          },
                                          child: Stack(
                                            children: <Widget>[
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(16), // Resim kenarı
                                                child: SizedBox.fromSize(
                                                  child: CachedNetworkImage(
                                                    width: sizeWidth(context).width * 0.40,
                                                    height: sizeWidth(context).height * 0.25,
                                                    fit: BoxFit.cover,
                                                    imageUrl: searchResult(query,bloc.dogBreed)[endIndex].imageUrl!,
                                                    placeholder: (context, url) => spinKit(context), // Yükleme sırasında gösterilecek widget
                                                    errorWidget: (context, url, error) => GestureDetector(
                                                      onTap: (){

                                                      },
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          const Icon(Icons.error),
                                                          Text(StringUtils.photoNotFound,style: CustomTextStyle().medium14(AppColor.black),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 10,
                                                bottom: 10,
                                                child: Container(
                                                  padding: const EdgeInsets.only(left: 8),
                                                  child: Text(searchResult(query,bloc.dogBreed)[endIndex].breed!, style: CustomTextStyle().bold16(AppColor.white)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    ]

                                ),
                              );

                            },
                          ),

                      ),
                      BlocBuilder<TextFieldBloc, TextFieldState>(
                        builder: (context, state) {

                          return Padding(
                            padding: const EdgeInsets.only(top: 8,bottom: 8),
                            child: Container(
                              width: state.width,

                              decoration: BoxDecoration(
                                  color: AppColor.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(state.topLeft),
                                    topRight: Radius.circular(state.topRight),
                                    bottomLeft: Radius.circular(state.bottomLeft),
                                    bottomRight: Radius.circular(state.bottomRight),
                                  ),
                                  border:  Border.all(color: AppColor.divider,width: 1)
                              ),
                              child: Column(
                                children: [
                                   const Padding(
                                      padding: EdgeInsets.only(top: 8),
                                      child: SizedBox(
                                        width: 32,
                                        child: Align(
                                          alignment: Alignment.center,
                                          child: Divider(
                                            color: AppColor.divider,
                                            thickness: 2,
                                            height: 2,
                                          ),
                                        ),
                                      ),
                                    ),

                                  TextField(
                                    style: CustomTextStyle().medium14(AppColor.black),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: StringUtils.search,
                                      hintStyle: CustomTextStyle().bold16(AppColor.secondaryLight),
                                      contentPadding:  EdgeInsets.only(left: 16,top:state.topPadding ),
                                    ),
                                    cursorColor: AppColor.blue,
                                    minLines: state.minLines,
                                    maxLines: null,
                                    onChanged: (value){
                                      setState(() {
                                        query = value;
                                      });
                                    },
                                    onTap: () {
                                      textFieldBloc.add(true);
                                    },
                                    onSubmitted: (value) {
                                      textFieldBloc.add(false);
                                    },
                                  ),
                                ],
                              )
                            )
                          );

                        },
                      ),

                    ],
                  );
                }
                return Container();
              },
            ),
          ),
        ),
      ),
    );
  }

}
