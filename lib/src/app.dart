import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'screen/users_list_screen.dart';
import 'viewmodels/user_list_view_model.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'User Search App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChangeNotifierProvider(
        child: UsersList(),
        create: (context) => UserListViewModel(),
      ),
    );
  }
}
