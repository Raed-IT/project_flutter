import 'package:project/app/data/models/image_model.dart';
import 'package:project/app/data/models/product_model.dart';

class CategoryModel {
  int? id ;
  String? name;
  String? desc;


  List<ImageModel> images =[];
  List<ProductModel> products =[];

  CategoryModel(
      {
        this.id,
        this.name,
        this.desc,
       });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    id= json['id'];
    images = List.of(json['images'])
        .map((element) => ImageModel.fromJson(element))
        .toList();
    products = List.of(json['products'])
        .map((element) => ProductModel.fromJson(element))
        .toList();
  }

}