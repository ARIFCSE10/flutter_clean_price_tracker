// ignore_for_file: invalid_annotation_target

import 'package:flutter_clean_price_tracker/src/features/price_tracker/domain/entities/active_symbol_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_symbol.freezed.dart';
part 'active_symbol.g.dart';

@freezed
class ActiveSymbol with _$ActiveSymbol {
  factory ActiveSymbol({
    @JsonKey(name: 'allow_forward_starting') int? allowForwardStarting,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'display_order') int? displayOrder,
    @JsonKey(name: 'exchange_is_open') int? exchangeIsOpen,
    @JsonKey(name: 'is_trading_suspended') int? isTradingSuspended,
    String? market,
    @JsonKey(name: 'market_display_name') String? marketDisplayName,
    double? pip,
    String? subgroup,
    @JsonKey(name: 'subgroup_display_name') String? subgroupDisplayName,
    String? submarket,
    @JsonKey(name: 'submarket_display_name') String? submarketDisplayName,
    String? symbol,
    @JsonKey(name: 'symbol_type') String? symbolType,
  }) = _ActiveSymbol;

  factory ActiveSymbol.fromJson(Map<String, dynamic> json) =>
      _$ActiveSymbolFromJson(json);
}

extension ActiveSymbolExt on ActiveSymbol {
  ActiveSymbolEntity toEntity() => ActiveSymbolEntity(
        displayName: displayName ?? '',
        symbol: symbol ?? '',
        market: market ?? '',
        marketDisplayName: marketDisplayName ?? '',
      );
}
