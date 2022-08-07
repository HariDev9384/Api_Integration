class TransitDetails{
  late final Line line;
  TransitDetails({required this.line});


  TransitDetails.fromJson(Map<String,dynamic> json){
  line=Line.fromJson(json['line']);
  }


  Map<String,dynamic> toJson(){
      final _data = <String, dynamic>{};
      _data['line']=line.toJson();
      return _data;
  }
}


class Line{
late final Vehicle vehicle;
Line({required this.vehicle});

Line.fromJson(Map<String,dynamic> json){
  vehicle=Vehicle.fromJson(json['vehicle']);
}

Map<String,dynamic> toJson(){
  final _data = <String, dynamic>{};
      _data['vehicle']=vehicle.toJson();
      return _data;
}

}


class Vehicle{
  late final String name;
  Vehicle({required this.name});

  Vehicle.fromJson(Map<String,dynamic> json){
  name=json['vehicle'];
}

Map<String,dynamic> toJson(){
  final _data = <String, dynamic>{};
      _data['name']=name;
      return _data;
}
}