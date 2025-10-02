// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderHistoryModelImpl _$$OrderHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderHistoryModelImpl(
      header: json['header'] == null
          ? null
          : HeaderOrderHistoryModel.fromJson(
              json['header'] as Map<String, dynamic>),
      details: (json['details'] as List<dynamic>?)
          ?.map((e) =>
              DetailOrderHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      footer: json['footer'] == null
          ? null
          : FooterOrderHistoryModel.fromJson(
              json['footer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderHistoryModelImplToJson(
        _$OrderHistoryModelImpl instance) =>
    <String, dynamic>{
      'header': instance.header,
      'details': instance.details,
      'footer': instance.footer,
    };
