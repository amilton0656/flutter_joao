String authErrorsString(String? code) {
  switch (code) {
    case 'INVALID_CREDENCIALS':
      return 'Email e/ou Senha inválidos';

    default:
      return 'Ocorreu um erro indefinido';
  }
}
