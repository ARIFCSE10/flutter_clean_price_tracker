// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_symbol_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActiveSymbolModel _$$_ActiveSymbolModelFromJson(Map<String, dynamic> json) =>
    _$_ActiveSymbolModel(
      activeSymbols: (json['active_symbols'] as List<dynamic>?)
          ?.map((e) => ActiveSymbol.fromJson(e as Map<String, dynamic>))
          .toList(),
      echoReq: json['echo_req'] == null
          ? null
          : EchoReq.fromJson(json['echo_req'] as Map<String, dynamic>),
      msgType: json['msg_type'] as String?,
      reqId: json['req_id'] as int?,
    );

Map<String, dynamic> _$$_ActiveSymbolModelToJson(
        _$_ActiveSymbolModel instance) =>
    <String, dynamic>{
      'active_symbols': instance.activeSymbols,
      'echo_req': instance.echoReq,
      'msg_type': instance.msgType,
      'req_id': instance.reqId,
    };
