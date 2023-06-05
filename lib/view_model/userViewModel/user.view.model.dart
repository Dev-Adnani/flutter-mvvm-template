import 'package:flutter/material.dart';
import 'package:mvvm/models/userModel/user.model.dart';
import '../../data/remote/response/api.response.dart';
import '../../repository/userRepo/user.repo.dart';

class UserVM extends ChangeNotifier {
  final _myRepo = UserRepo();

  ApiResponse<UserModel> userModel = ApiResponse.loading();

  void _setUserMain(ApiResponse<UserModel> response) {
    userModel = response;
    notifyListeners();
  }

  Future<void> fetchUserData() async {
    _setUserMain(ApiResponse.loading());
    _myRepo
        .getUserData()
        .then((value) => _setUserMain(ApiResponse.completed(value)))
        .onError((error, stackTrace) =>
            _setUserMain(ApiResponse.error(error.toString())));
  }
}
