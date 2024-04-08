import 'package:dark_mode_changer/logic/user/user_provider.dart';
import 'package:json_annotation/json_annotation.dart';
part "user_model.g.dart";

@JsonSerializable()
class UserModel {
  UserModel({
    this.id,
    this.username,
    this.email,
    this.phone,
    this.website,
  });
  final int? id;
  final String? username;
  final String? email;
  final String? phone;
  final String? website;
  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
