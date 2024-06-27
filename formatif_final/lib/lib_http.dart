import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:formatif_final/transfert.dart';

class SingletonDio {
  static var cookiemanager = CookieManager(CookieJar());

  static Dio getDio() {
    Dio dio = Dio();
    dio.interceptors.add(cookiemanager);
    return dio;
  }
}

Future<int> sendVals(int val1, int val2) async {
  Request req = new Request();
  req.val1 = val1;
  req.val2 = val2;
  try {
    var response = await SingletonDio.getDio()
        .post('http://10.0.2.2:8080/examen/plusgrand/', data: req.toJson());
    print(response);
    return response.data;
  } catch (e) {
    print(e);
    rethrow;
  }
}