class StorageUserInfo {
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final bool isEncryptionEnabled;
  final String? encryptedText;

  StorageUserInfo({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.isEncryptionEnabled,
    required this.encryptedText,
  });

  factory StorageUserInfo.fromJson(Map<String, dynamic> json) {
    return StorageUserInfo(
      id: json['id'],
      email: json['email'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      isEncryptionEnabled: json['isEncryptionEnabled'] ?? false,
      encryptedText: json['encryptedText'],
    );
  }

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json["email"] = email;
    json["id"] = id;
    json["firstName"] = firstName;
    json["lastName"] = lastName;
    json["isEncryptionEnabled"] = isEncryptionEnabled;
    json["encryptedText"] = encryptedText;
    return json;
  }
}
