class InnerErrorDto {
  String? message;
  int? code = 0;

  InnerErrorDto({required this.message, this.code});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json["message"] = message;
    json["code"] = code;
    return json;
  }

  factory InnerErrorDto.fromJson(Map<String, dynamic> json) {
    return InnerErrorDto(
      message: json['message'],
      code: json['code'],
    );
  }
}
