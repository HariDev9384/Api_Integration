import '../DataModels/Routes.dart';
import '../DataModels/GeoCodedWayPoints.dart';

class DataModel {
  DataModel({
    required this.geocodedWaypoints,
    required this.routes,
    required this.status,
  });
  late final List<GeocodedWaypoints> geocodedWaypoints;
  late final List<Routes> routes;
  late final String status;
  
  DataModel.fromJson(Map<String, dynamic> json){
    geocodedWaypoints = List.from(json['geocoded_waypoints']).map((e)=>GeocodedWaypoints.fromJson(e)).toList();
    routes = List.from(json['routes']).map((e)=>Routes.fromJson(e)).toList();
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['geocoded_waypoints'] = geocodedWaypoints.map((e)=>e.toJson()).toList();
    _data['routes'] = routes.map((e)=>e.toJson()).toList();
    _data['status'] = status;
    return _data;
  }
}
