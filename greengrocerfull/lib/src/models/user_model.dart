class UserModel {
  String? name;
  String? email;
  String? phone;
  String? cpf;
  String? password;
  String? id;
  String? token;

  UserModel({
    this.phone,
    this.cpf,
    this.email,
    this.name,
    this.password,
    this.id,
    this.token,
  });
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      phone: map['phone'],
      cpf: map['cpf'],
      email: map['email'],
      name: map['fullname'],
      password: map['password'],
      id: map['id'],
      token: map['token'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
     'phone': phone,
     'cpf': cpf,
     'email': email,
     'fullname': name,
     'password': password,
     'id': id,
     'token': token,
    };
  }

  @override
  String toString() {
    return 'name: $name | cpf: $cpf';
  }
}
