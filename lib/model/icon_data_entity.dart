import 'package:demo_qqmusic/generated/json/base/json_field.dart';
import 'package:demo_qqmusic/generated/json/icon_data_entity.g.dart';
import 'dart:convert';
export 'package:demo_qqmusic/generated/json/icon_data_entity.g.dart';

@JsonSerializable()
class IconDataEntity {
	late String title;
	late List<IconDataIconList> iconList;

	IconDataEntity();

	factory IconDataEntity.fromJson(Map<String, dynamic> json) => $IconDataEntityFromJson(json);

	Map<String, dynamic> toJson() => $IconDataEntityToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}

@JsonSerializable()
class IconDataIconList {
	late String icons;
	late String title;

	IconDataIconList();

	factory IconDataIconList.fromJson(Map<String, dynamic> json) => $IconDataIconListFromJson(json);

	Map<String, dynamic> toJson() => $IconDataIconListToJson(this);

	@override
	String toString() {
		return jsonEncode(this);
	}
}