// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'echo_req.freezed.dart';
part 'echo_req.g.dart';

@freezed
class EchoReq with _$EchoReq {
  factory EchoReq({
    @JsonKey(name: 'active_symbols') String? activeSymbols,
    @JsonKey(name: 'product_type') String? productType,
    @JsonKey(name: 'req_id') int? reqId,
  }) = _EchoReq;

  factory EchoReq.fromJson(Map<String, dynamic> json) =>
      _$EchoReqFromJson(json);
}
