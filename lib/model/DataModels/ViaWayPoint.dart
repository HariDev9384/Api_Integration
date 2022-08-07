import '../DataModels/EndLocation.dart';
import 'Duration.dart';
import 'Distance.dart';
import 'Polyline.dart';
import 'StartLocation.dart';
import 'Steps.dart';

class ViaWaypoint {
  ViaWaypoint({
    required this.distance,
    required this.duration,
    required this.endLocation,
    required this.htmlInstructions,
    required this.polyline,
    required this.startLocation,
    required this.steps,
    required this.travelMode,
  });
  late final Distance distance;
  late final Duration duration;
  late final EndLocation endLocation;
  late final String htmlInstructions;
  late final Polyline polyline;
  late final StartLocation startLocation;
  late final List<Steps> steps;
  late final String travelMode;
  
  ViaWaypoint.fromJson(Map<String, dynamic> json){
    distance = Distance.fromJson(json['distance']);
    duration = Duration.fromJson(json['duration']);
    endLocation = EndLocation.fromJson(json['end_location']);
    htmlInstructions = json['html_instructions'];
    polyline = Polyline.fromJson(json['polyline']);
    startLocation = StartLocation.fromJson(json['start_location']);
    steps = List.from(json['steps']).map((e)=>Steps.fromJson(e)).toList();
    travelMode = json['travel_mode'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['distance'] = distance.toJson();
    _data['duration'] = duration.toJson();
    _data['end_location'] = endLocation.toJson();
    _data['html_instructions'] = htmlInstructions;
    _data['polyline'] = polyline.toJson();
    _data['start_location'] = startLocation.toJson();
    _data['steps'] = steps.map((e)=>e.toJson()).toList();
    _data['travel_mode'] = travelMode;
    return _data;
  }
}
