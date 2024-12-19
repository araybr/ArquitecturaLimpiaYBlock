class VaritaModel {
  final String wood;
  final String core;
  final String length;
  VaritaModel({required this.wood, required this.core, required this.length});
  factory VaritaModel.fromJson(Map<String, dynamic> json) {
    return VaritaModel(
        wood: json['wood'] == "" ? "No Wood" : json['wood'],
        core: json['core'] == "" ? "No Core" : json['core'],
        length: (json['length'] ?? 5).toString());
  }
  Map<String, dynamic> toJson() {
    return {'wood': wood, 'core': core, 'length': length};
  }
}

