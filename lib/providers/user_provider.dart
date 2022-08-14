import 'package:flutter/widgets.dart';
import 'package:sun_meet/models/user.dart';
import 'package:sun_meet/resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  User? xuser;
  final AuthMethods _authMethods = AuthMethods();

  User get getUser => xuser!;


  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    xuser = user;
    notifyListeners();
  }
}