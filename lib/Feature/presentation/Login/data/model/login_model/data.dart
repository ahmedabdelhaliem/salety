class Data {
  int? id;
  String? name;
  String? mobile;
  String? email;
  int? roleId;
  dynamic address;
  String? profilePhotoPath;
  String? token;
  String? profilePhotoUrl;

  Data({
    this.id,
    this.name,
    this.mobile,
    this.email,
    this.roleId,
    this.address,
    this.profilePhotoPath,
    this.token,
    this.profilePhotoUrl,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'] as int?,
        name: json['name'] as String?,
        mobile: json['mobile'] as String?,
        email: json['email'] as String?,
        roleId: json['role_id'] as int?,
        address: json['address'] as dynamic,
        profilePhotoPath: json['profile_photo_path'] as String?,
        token: json['token'] as String?,
        profilePhotoUrl: json['profile_photo_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'mobile': mobile,
        'email': email,
        'role_id': roleId,
        'address': address,
        'profile_photo_path': profilePhotoPath,
        'token': token,
        'profile_photo_url': profilePhotoUrl,
      };
}
