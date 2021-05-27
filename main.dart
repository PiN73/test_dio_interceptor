import 'package:dio/dio.dart';

void main() async {
  final dio = Dio()..interceptors.add(ProblemInterceptor());
  await dio.get('https://baidu.com/');
}

class ProblemInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    throw Exception('Unexpected problem inside onResponse');
  }
}
