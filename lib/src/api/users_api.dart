import 'package:dio/dio.dart';
import 'package:mercados_delivery/src/models/user.dart';

class UsersApi {
  UsersApi._internal();
  static UsersApi _instance = UsersApi._internal();
  static UsersApi get instance => _instance;

  final _dio = Dio();

  Future<List<User>> getUsers(int page) async {
    try {
      final Response response = await this._dio.get(
          'https://reqres.in/api/users',
          queryParameters: {"page": page, "delay": 3});
      return (response.data["data"] as List)
          .map((e) => User.fromJson(e))
          .toList();
    } catch (e) {
      print(e);
      return null;
    }
  }
}
