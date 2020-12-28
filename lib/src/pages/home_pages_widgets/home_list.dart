import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:mercados_delivery/src/controllers/home_controller.dart';
import 'package:mercados_delivery/src/models/user.dart';

class HomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'users',
      builder: (_) {
        if (_.loading) {
          return Center(child: LinearProgressIndicator());
        }
        return ListView.builder(
          itemBuilder: (context, index) {
            final User user = _.users[index];
            return ListTile(
              title: Text(user.firstName),
              subtitle: Text(user.email),
              onTap: () => _.showUserProfile(user),
            );
          },
          itemCount: _.users.length,
        );
      },
    );
  }
}
