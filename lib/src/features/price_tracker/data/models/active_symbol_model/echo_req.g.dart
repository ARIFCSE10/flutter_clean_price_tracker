// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'echo_req.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EchoReq _$$_EchoReqFromJson(Map<String, dynamic> json) => _$_EchoReq(
      activeSymbols: json['active_symbols'] as String?,
      productType: json['product_type'] as String?,
      reqId: json['req_id'] as int?,
    );

Map<String, dynamic> _$$_EchoReqToJson(_$_EchoReq instance) =>
    <String, dynamic>{
      'active_symbols': instance.activeSymbols,
      'product_type': instance.productType,
      'req_id': instance.reqId,
    };
