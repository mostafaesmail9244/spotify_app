
class SignUpUserReq {
  String? fullName;
  String? email;
  String? password;
  SignUpUserReq({
    this.fullName,
    this.email,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullName': fullName,
      'email': email,
      'password': password,
    };
  }

  factory SignUpUserReq.fromMap(Map<String, dynamic> map) {
    return SignUpUserReq(
      fullName: map['fullName'] != null ? map['fullName'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
    );
  }
}
