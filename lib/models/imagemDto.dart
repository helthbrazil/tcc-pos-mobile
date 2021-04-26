import 'package:flutter/material.dart';

class ImagemDto {
  final String id;
  final String src;

  ImagemDto({@required this.id, @required this.src});

  static List<ImagemDto> getImages(Map<String, dynamic> json){
    var images = [];
    int length = json.length;

    for(int i = 0 ; i < length; i++){
      images.add(new ImagemDto(id: json[i]['id'], src: json[i]['src']));
    }

    return images;
  }
}
