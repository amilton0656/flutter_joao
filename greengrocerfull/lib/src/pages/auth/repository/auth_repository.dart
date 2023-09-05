import 'package:greengrocerfull/src/config/constants/endpoints.dart';
import 'package:greengrocerfull/src/models/user_model.dart';
import 'package:greengrocerfull/src/pages/auth/repository/auth_errors.dart' as auth_errors;

import '../../../services/http_manager.dart';
import '../results/auth_result.dart';

class AuthRepository {
  final HttpManager _httpManager = HttpManager();

  Future signIn({
    required String email,
    required String password,
  }) async {
    final result = await _httpManager.restRequest(
      url: Endpoints.signin,
      method: HttpMethods.post,
      body: {
        "email": email,
        "password": password,
      },
    );

    if (result['result'] != null) {
      print('Signin funcionou');
      final user = UserModel.fromJson(result['result']);
      return AuthResult.success(user);
    } else {
      return AuthResult.error(auth_errors.authErrorsString(result['error']));
    }
  }
}
