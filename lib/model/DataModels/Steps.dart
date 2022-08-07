import '../DataModels/Distance.dart';
import '../DataModels/Polyline.dart';
import '../DataModels/StartLocation.dart';
import '../DataModels/EndLocation.dart';
import '../DataModels/TransitDetails.dart';
import 'Duration.dart';


class Steps {
  Steps({
    required this.distance,
    required this.duration,
    required this.endLocation,
    required this.htmlInstructions,
    required this.polyline,
    required this.startLocation,
    required this.steps,
    required this.travelMode,
    //required this.transitDetails
  });
  late final Distance distance;
  late final Duration duration;
  late final EndLocation endLocation;
  late final String htmlInstructions;
  late final Polyline polyline;
  late final StartLocation startLocation;
  late final List<Steps> steps;
  //late final TransitDetails transitDetails;
  late final String travelMode;
  
  Steps.fromJson(Map<String, dynamic> json){
    distance = Distance.fromJson(json['distance']);
    duration = Duration.fromJson(json['duration']);
    endLocation = EndLocation.fromJson(json['end_location']);
    //transitDetails=TransitDetails.fromJson(json['transit_details']);
    htmlInstructions = json['html_instructions'];
    polyline = Polyline.fromJson(json['polyline']);
    startLocation = StartLocation.fromJson(json['start_location']);
    //steps = List.from(json['steps']).map((e)=>Steps.fromJson(e)).toList();
    travelMode = json['travel_mode'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['distance'] = distance.toJson();
    _data['duration'] = duration.toJson();
    _data['end_location'] = endLocation.toJson();
    _data['html_instructions'] = htmlInstructions;
    _data['polyline'] = polyline.toJson();
    //_data['transit_details']=transitDetails.toJson();
    _data['start_location'] = startLocation.toJson();
    _data['steps'] = steps.map((e)=>e.toJson()).toList();
    _data['travel_mode'] = travelMode;
    return _data;
  }
}

