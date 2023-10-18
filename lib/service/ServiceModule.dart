import 'package:app_nation/utils/constant/AppConstant.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ServiceModule{

  baseService(){
    final dio = Dio(BaseOptions(
        contentType:"application/json",
        connectTimeout: const Duration(milliseconds: 30000),
        sendTimeout: const Duration(milliseconds: 30000),
        baseUrl: AppConstant.baseUrl,
    ));
    dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        maxWidth: 300
    ));
    return dio;
  }
}