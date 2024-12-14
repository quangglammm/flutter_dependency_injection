import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable()
class User extends Equatable {
  String id;
  final String email;
  final String password;

  User({required this.id, required this.email, required this.password});

  @override
  List<Object?> get props => [this.id, this.email, this.password];

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}