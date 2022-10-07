import 'package:project/app/data/models/image_model.dart';

class ProductModel {
  String? name;
  String? desc;
  double? price;

  List<ImageModel> images =[];

  ProductModel({this.name,this.desc,this.price});

  ProductModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    price = double.parse(json['price'].toString());
    images = List.of(json['images'])
        .map((element) => ImageModel.fromJson(element))
        .toList();
  }
}
