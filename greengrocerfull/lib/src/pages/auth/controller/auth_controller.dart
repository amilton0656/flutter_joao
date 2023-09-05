import 'package:get/get.dart';
import 'package:greengrocerfull/src/pages/auth/repository/auth_repository.dart';
import 'package:greengrocerfull/src/pages/auth/results/auth_result.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final authRepository = AuthRepository();

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    isLoading.value = true;
    print('antes dos 2 seg $isLoading');

    // await Future.delayed(const Duration(seconds: 2));
    AuthResult result =
        await authRepository.signIn(email: email, password: password);

    isLoading.value = false;
    print('depois dos 2 seg $isLoading');

    result.when(success: (user) {
      print(user);
    }, error: (message) {
      print(message);
    });
  }
}
