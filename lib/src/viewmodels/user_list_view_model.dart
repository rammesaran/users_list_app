import 'package:flutter/foundation.dart';
import 'package:user_search_app/src/service/webservice.dart';
import 'package:user_search_app/src/viewmodels/user_view_model.dart';

class UserListViewModel extends ChangeNotifier {
  List<UserViewModel> users = List<UserViewModel>();
  List<UserViewModel> filteredUsers = List<UserViewModel>();

  Future<void> fetchUsers() async {
    final result = await WebService().getUserListDetails();
    this.users = result.map((e) => UserViewModel(userListModal: e)).toList();
    this.filteredUsers = this.users;
    notifyListeners();
  }

  void doFilter(String searchKey) {
    this.filteredUsers = users
        .where((element) =>
            element.name.toLowerCase().contains(searchKey.toLowerCase()))
        .toList();
    notifyListeners();
  }

  void doDelete(int id) {
    filteredUsers.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
