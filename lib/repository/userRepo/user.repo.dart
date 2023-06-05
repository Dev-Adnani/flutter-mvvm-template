import 'package:mvvm/models/userModel/user.model.dart';

import '../../data/remote/network/api.end.points.dart';
import '../../data/remote/network/base.api.service.dart';
import '../../data/remote/network/network.api.service.dart';

class UserRepo {
  final BaseApiService _apiService = NetworkApiService();

  Future<UserModel?> getUserData() async {
    try {
      dynamic response = await _apiService.getResponse(ApiEndPoints().SIGN_IN);
      final jsonData = UserModel.fromJson(response);
      return jsonData;
    } catch (e) {
      rethrow;
    }
  }
}
