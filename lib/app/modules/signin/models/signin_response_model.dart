class SignInResponseModel {
  String? message;  // To capture the "message" field in the response
  Token? token;     // To handle the "token" object that contains the "access" token

  SignInResponseModel({this.message, this.token});

  SignInResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    token = json['token'] != null ? Token.fromJson(json['token']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (token != null) {
      data['token'] = token!.toJson();
    }
    return data;
  }
}

class Token {
  String? access;  // To store the "access" token

  Token({this.access});

  Token.fromJson(Map<String, dynamic> json) {
    access = json['access'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access'] = access;
    return data;
  }
}
