import 'package:user_search_app/src/model/users_list_modal.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

const url = "https://jsonplaceholder.typicode.com/users";

class WebService {
  Future<List<UserListModal>> getUserListDetails() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final output = json.decode(response.body);
      final Iterable a = output;
      return a.map((e) => UserListModal.fromJson(e)).toList();
    } else {
      throw Exception("error occured");
    }
  }
}
