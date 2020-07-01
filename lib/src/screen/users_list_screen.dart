import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_search_app/src/viewmodels/user_list_view_model.dart';
import 'package:user_search_app/src/widgets/users_list_widget.dart';

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  TextEditingController textController = TextEditingController();
  @override
  void initState() {
    super.initState();
    Provider.of<UserListViewModel>(context, listen: false).fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserListViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('UserList'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: textController,
                onChanged: (value) {
                  userData.doFilter(value);
                },
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none),
              ),
            ),
            Expanded(
                child: UsersListWidget(
              userslist: userData.filteredUsers,
            ))
          ],
        ),
      ),
    );
  }
}
