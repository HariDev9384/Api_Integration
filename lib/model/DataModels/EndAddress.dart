class EndAddress {
  EndAddress({
    required this.text,
    required this.value,
  });
  late final String text;
  late final int value;
  
  EndAddress.fromJson(Map<String, dynamic> json){
    text = json['text'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['text'] = text;
    _data['value'] = value;
    return _data;
  }
}
