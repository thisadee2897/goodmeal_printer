// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retail_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RetailHistoryModelImpl _$$RetailHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RetailHistoryModelImpl(
      header: json['header'] == null
          ? null
          : HeaderRetailHistoryModel.fromJson(
              json['header'] as Map<String, dynamic>),
      details: (json['details'] as List<dynamic>?)
          ?.map((e) =>
              DetailRetailHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      footer: json['footer'] == null
          ? null
          : FooterRetailHistoryModel.fromJson(
              json['footer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RetailHistoryModelImplToJson(
        _$RetailHistoryModelImpl instance) =>
    <String, dynamic>{
      'header': instance.header,
      'details': instance.details,
      'footer': instance.footer,
    };
