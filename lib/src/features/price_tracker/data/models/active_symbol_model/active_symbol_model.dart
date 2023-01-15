// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'active_symbol.dart';
import 'echo_req.dart';

part 'active_symbol_model.freezed.dart';
part 'active_symbol_model.g.dart';

@freezed
class ActiveSymbolModel with _$ActiveSymbolModel {
  factory ActiveSymbolModel({
    @JsonKey(name: 'active_symbols') List<ActiveSymbol>? activeSymbols,
    @JsonKey(name: 'echo_req') EchoReq? echoReq,
    @JsonKey(name: 'msg_type') String? msgType,
    @JsonKey(name: 'req_id') int? reqId,
  }) = _ActiveSymbolModel;

  factory ActiveSymbolModel.fromJson(Map<String, dynamic> json) =>
      _$ActiveSymbolModelFromJson(json);
}
