import 'package:flutter/material.dart';
import 'package:user_search_app/src/viewmodels/user_view_model.dart';

class UsersListWidget extends StatelessWidget {
  final List<UserViewModel> userslist;

  UsersListWidget({this.userslist});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.userslist.length,
      itemBuilder: (context, index) {
        final user = this.userslist[index];
        if (index.isEven) {
          return Padding(
            padding: const EdgeInsets.only(left: 0, right: 20.0),
            child: Container(
              height: 120,
              child: Card(
                margin: EdgeInsets.all(2.0),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title:
                          Text('Name : ${user.name}\n Email : ${user.email}'),
                      subtitle: Text('Phone : ${user.phone}'),
                      trailing: Icon(
                        Icons.delete_outline,
                        color: Colors.red,
                      ),
                    ),
                    Text(user.email),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.only(right: 0.0, left: 20.0),
            child: Container(
              height: 120,
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title:
                          Text('Name : ${user.name}\n Email : ${user.email}'),
                      subtitle: Text('Phone : ${user.phone}'),
                      trailing: Icon(
                        Icons.delete_outline,
                        color: Colors.red,
                      ),
                    ),
                    Text(user.email),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
