import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  String name;
  final String email;
  String phone;
  String avatar;

  User({
    required this.id,
    this.name = '',
    required this.email,
    this.phone = '',
    this.avatar = '',
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  factory User.empty() => User(
        id: '',
        name: '',
        email: '',
        phone: '',
        avatar: '',
      );

  bool get isEmpty => id.isEmpty || name.isEmpty;

  void update({
    String? name,
    String? phone,
    String? avatar,
  }) {
    this.name = name ?? this.name;
    this.phone = phone ?? this.phone;
    this.avatar = avatar ?? this.avatar;
  }
}
