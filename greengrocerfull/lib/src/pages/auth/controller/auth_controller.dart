import 'package:get/get.dart';
import 'package:greengrocerfull/src/pages/auth/repository/auth_repository.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final authRepository = AuthRepository();

  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    isLoading = true.obs;
    print('antes dos 2 seg $isLoading');

    // await Future.delayed(const Duration(seconds: 2));
    await authRepository.signIn(email: email, password: password);

    isLoading = false.obs;
    print('depois dos 2 seg $isLoading');
  }
}
