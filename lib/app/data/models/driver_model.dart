import 'package:project/app/data/models/image_model.dart';

class UserModel {
  int? id;

  String? name;
  String? email;

  UserModel({required this.id, required this.name, this.email});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];

  }
}
