import 'package:json_annotation/json_annotation.dart';
part 'transfert.g.dart';
@JsonSerializable()
class ListeElement{
  ListeElement();
  int nombre = 0;
  String description = '';
  String representation ='';

  factory ListeElement.fromJson(Map<String, dynamic> json) => _$ListeElementFromJson(json);

  Map<String, dynamic> toJson() => _$ListeElementToJson(this);
}