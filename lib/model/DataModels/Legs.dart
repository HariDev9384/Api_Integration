
import '../DataModels/Distance.dart';
import '../DataModels/StartLocation.dart';
import '../DataModels/Steps.dart';
import '../DataModels/TrafficSpeedEntry.dart';
import '../DataModels/ViaWayPoint.dart';
import '../DataModels/EndLocation.dart';
import '../DataModels/Duration.dart';

class Legs {
  Legs({
    required this.distance,
    required this.duration,
    required this.endAddress,
    required this.endLocation,
    required this.startAddress,
    required this.startLocation,
    required this.steps,
    required this.trafficSpeedEntry,
    required this.viaWaypoint,
  });
  late final Distance distance;
  late final Duration duration;
  late final String? endAddress;
  late final EndLocation endLocation;
  late final String startAddress;
  late final StartLocation startLocation;
  late final List<Steps> steps;
  late final List<TrafficSpeedEntry> trafficSpeedEntry;
  late final List<ViaWaypoint> viaWaypoint;
  
  Legs.fromJson(Map<String, dynamic> json){
    distance = Distance.fromJson(json['distance']);
    duration = Duration.fromJson(json['duration']);
    endAddress = json['end_address'];
    endLocation = EndLocation.fromJson(json['end_location']);
    startAddress = json['start_address'];
    startLocation = StartLocation.fromJson(json['start_location']);
    steps = List.from(json['steps']).map((e) => Steps.fromJson(e)).toList();
    //steps=json['steps'];
    trafficSpeedEntry=List.from(json['traffic_speed_entry']).map((e) => TrafficSpeedEntry.fromJson(e)).toList();
    viaWaypoint = List.from(json['via_waypoint']).map((e)=>ViaWaypoint.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['distance'] = distance.toJson();
    _data['duration'] = duration.toJson();
    _data['end_address'] = endAddress;
    _data['end_location'] = endLocation.toJson();
    _data['start_address'] = startAddress;
    _data['start_location'] = startLocation.toJson();
    _data['steps'] = steps.map((e) => e.toJson()).toList();
    _data['traffic_speed_entry'] = trafficSpeedEntry;
    _data['via_waypoint'] = viaWaypoint.map((e)=>e.toJson()).toList();
    return _data;
  }
}
