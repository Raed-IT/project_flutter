class ImageModel {
  String? url;

  ImageModel({this.url});

  ImageModel.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }
}
