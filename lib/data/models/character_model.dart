import 'package:flutter_counter_block/data/models/varita_model.dart';


class CharacterModel {
  final String name;
  final String house;
  final String image;
  final VaritaModel wand;
  CharacterModel(
      {required this.name, required this.house, required this.image, required this.wand});
  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
        name: json['name'],
        house: json['house'] ?? 'Unknown',
        image: json['image'] == "" ?
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiJtp_J8yHSQq6T8jwTmEqrsOBSVe9VvZZHg&s" : json['image'],
        wand: VaritaModel.fromJson(json['wand']));
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name, 
      'house': house, 
      'image': image, 
      'wand': wand};
  }
}
