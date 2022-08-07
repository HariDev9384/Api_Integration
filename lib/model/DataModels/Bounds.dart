
import '../DataModels/NorthEast.dart';
import '../DataModels/SouthWest.dart';


class Bounds {
  Bounds({
    required this.northeast,
    required this.southwest,
  });
  late final Northeast northeast;
  late final Southwest southwest;
  
  Bounds.fromJson(Map<String, dynamic> json){
    northeast = Northeast.fromJson(json['northeast']);
    southwest = Southwest.fromJson(json['southwest']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['northeast'] = northeast.toJson();
    _data['southwest'] = southwest.toJson();
    return _data;
  }
}
