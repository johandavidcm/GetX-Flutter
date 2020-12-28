import 'package:get/state_manager.dart';
import 'package:mercados_delivery/src/api/users_api.dart';
import 'package:mercados_delivery/src/models/user.dart';
import 'package:get/route_manager.dart';
import 'package:mercados_delivery/src/pages/profile_page.dart';

class HomeController extends GetxController {
  int _counter = 0;
  int get counter => _counter;
  List<User> _users = [];
  bool _loading = true;

  List<User> get users => _users;

  bool get loading => _loading;

  @override
  void onInit() {
    super.onInit();
    // print("Same as InitState");
  }

  @override
  void onReady() {
    super.onReady();
    // print("OnReady");
    this.loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersApi.instance.getUsers(1);
    this._loading = false;
    this._users = data;
    update(['users']);
  }

  void increment() {
    this._counter++;
    update(['text'], _counter >= 10);
  }

  Future<void> showUserProfile(User user) async {
    final result = await Get.to<String>(
      ProfilePage(),
      arguments: {
        "user": user,
      },
    );
    if (result != null) {
      print("Result: $result");
    }
  }
}
