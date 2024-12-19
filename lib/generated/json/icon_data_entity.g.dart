import 'package:demo_qqmusic/generated/json/base/json_convert_content.dart';
import 'package:demo_qqmusic/model/icon_data_entity.dart';

IconDataEntity $IconDataEntityFromJson(Map<String, dynamic> json) {
  final IconDataEntity iconDataEntity = IconDataEntity();
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    iconDataEntity.title = title;
  }
  final List<IconDataIconList>? iconList = (json['iconList'] as List<dynamic>?)
      ?.map(
          (e) => jsonConvert.convert<IconDataIconList>(e) as IconDataIconList)
      .toList();
  if (iconList != null) {
    iconDataEntity.iconList = iconList;
  }
  return iconDataEntity;
}

Map<String, dynamic> $IconDataEntityToJson(IconDataEntity entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['title'] = entity.title;
  data['iconList'] = entity.iconList.map((v) => v.toJson()).toList();
  return data;
}

extension IconDataEntityExtension on IconDataEntity {
  IconDataEntity copyWith({
    String? title,
    List<IconDataIconList>? iconList,
  }) {
    return IconDataEntity()
      ..title = title ?? this.title
      ..iconList = iconList ?? this.iconList;
  }
}

IconDataIconList $IconDataIconListFromJson(Map<String, dynamic> json) {
  final IconDataIconList iconDataIconList = IconDataIconList();
  final String? icons = jsonConvert.convert<String>(json['icons']);
  if (icons != null) {
    iconDataIconList.icons = icons;
  }
  final String? title = jsonConvert.convert<String>(json['title']);
  if (title != null) {
    iconDataIconList.title = title;
  }
  return iconDataIconList;
}

Map<String, dynamic> $IconDataIconListToJson(IconDataIconList entity) {
  final Map<String, dynamic> data = <String, dynamic>{};
  data['icons'] = entity.icons;
  data['title'] = entity.title;
  return data;
}

extension IconDataIconListExtension on IconDataIconList {
  IconDataIconList copyWith({
    String? icons,
    String? title,
  }) {
    return IconDataIconList()
      ..icons = icons ?? this.icons
      ..title = title ?? this.title;
  }
}