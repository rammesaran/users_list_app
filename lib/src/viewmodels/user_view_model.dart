import 'package:user_search_app/src/model/users_list_modal.dart';

class UserViewModel {
  final UserListModal userListModal;
  UserViewModel({this.userListModal});

  String get name {
    return this.userListModal.name;
  }

  String get email {
    return this.userListModal.email;
  }

  int get id {
    return this.userListModal.id;
  }

  String get userName {
    return this.userListModal.username;
  }

  String get phone {
    return this.userListModal.phone;
  }

  String get webSite {
    return this.userListModal.website;
  }
}
