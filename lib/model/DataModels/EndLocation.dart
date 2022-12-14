
class EndLocation {
  EndLocation({
    required this.lat,
    required this.lng,
  });
  late final double? lat;
  late final double? lng;
  
  EndLocation.fromJson(Map<String, dynamic> json){
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['lat'] = lat;
    _data['lng'] = lng;
    return _data;
  }
}

