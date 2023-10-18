

import 'package:app_nation/model/DogBreed.dart';
import 'package:app_nation/model/DogGenerate.dart';
import 'package:app_nation/model/DogModel.dart';
import 'package:app_nation/model/SubBreedModel.dart';
import 'package:app_nation/service/ServiceModule.dart';
import 'package:app_nation/utils/constant/AppConstant.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'ApiService.g.dart';
@RestApi(baseUrl:AppConstant.baseUrl)
abstract class ApiService{
  factory ApiService(Dio dio) = _ApiService;

  static ApiService create(){
    return ApiService(ServiceModule().baseService());
  }
  @GET(AppConstant.allList)
  Future<DogModel> allDogs();

  @GET(AppConstant.byBreed)
  Future<DogBreed> allBreed(@Path("type") String type);

  @GET(AppConstant.dogsBreed)
  Future<SubBreedModel> subBreed(@Path("type") String type);

  @GET(AppConstant.generateRandom)
  Future<DogGenerate> generate(@Path("type") String type);
}