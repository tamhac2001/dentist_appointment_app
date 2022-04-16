// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceDTO _$$_ServiceDTOFromJson(Map<String, dynamic> json) =>
    _$_ServiceDTO(
      name: json['name'] as String,
      description: json['description'] as String,
      price: Decimal.fromJson(json['price'] as String),
      timeOfUse: json['timeOfUse'] as int,
    );

Map<String, dynamic> _$$_ServiceDTOToJson(_$_ServiceDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'timeOfUse': instance.timeOfUse,
    };
