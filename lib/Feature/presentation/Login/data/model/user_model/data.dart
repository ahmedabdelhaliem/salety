class Data {
  int? id;
  String? name;
  String? mobile;
  String? email;
  String? profilePhotoPath;
  int? roleId;
  String? profilePhotoUrl;

  Data({
    this.id,
    this.name,
    this.mobile,
    this.email,
    this.profilePhotoPath,
    this.roleId,
    this.profilePhotoUrl,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'] as int?,
        name: json['name'] as String?,
        mobile: json['mobile'] as String?,
        email: json['email'] as String?,
        profilePhotoPath: json['profile_photo_path'] as String?,
        roleId: json['role_id'] as int?,
        profilePhotoUrl: json['profile_photo_url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'mobile': mobile,
        'email': email,
        'profile_photo_path': profilePhotoPath,
        'role_id': roleId,
        'profile_photo_url': profilePhotoUrl,
      };
}
