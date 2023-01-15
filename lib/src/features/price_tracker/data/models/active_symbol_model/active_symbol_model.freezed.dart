// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_symbol_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActiveSymbolModel _$ActiveSymbolModelFromJson(Map<String, dynamic> json) {
  return _ActiveSymbolModel.fromJson(json);
}

/// @nodoc
mixin _$ActiveSymbolModel {
  @JsonKey(name: 'active_symbols')
  List<ActiveSymbol>? get activeSymbols => throw _privateConstructorUsedError;
  @JsonKey(name: 'echo_req')
  EchoReq? get echoReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'msg_type')
  String? get msgType => throw _privateConstructorUsedError;
  @JsonKey(name: 'req_id')
  int? get reqId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveSymbolModelCopyWith<ActiveSymbolModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveSymbolModelCopyWith<$Res> {
  factory $ActiveSymbolModelCopyWith(
          ActiveSymbolModel value, $Res Function(ActiveSymbolModel) then) =
      _$ActiveSymbolModelCopyWithImpl<$Res, ActiveSymbolModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'active_symbols') List<ActiveSymbol>? activeSymbols,
      @JsonKey(name: 'echo_req') EchoReq? echoReq,
      @JsonKey(name: 'msg_type') String? msgType,
      @JsonKey(name: 'req_id') int? reqId});

  $EchoReqCopyWith<$Res>? get echoReq;
}

/// @nodoc
class _$ActiveSymbolModelCopyWithImpl<$Res, $Val extends ActiveSymbolModel>
    implements $ActiveSymbolModelCopyWith<$Res> {
  _$ActiveSymbolModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSymbols = freezed,
    Object? echoReq = freezed,
    Object? msgType = freezed,
    Object? reqId = freezed,
  }) {
    return _then(_value.copyWith(
      activeSymbols: freezed == activeSymbols
          ? _value.activeSymbols
          : activeSymbols // ignore: cast_nullable_to_non_nullable
              as List<ActiveSymbol>?,
      echoReq: freezed == echoReq
          ? _value.echoReq
          : echoReq // ignore: cast_nullable_to_non_nullable
              as EchoReq?,
      msgType: freezed == msgType
          ? _value.msgType
          : msgType // ignore: cast_nullable_to_non_nullable
              as String?,
      reqId: freezed == reqId
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EchoReqCopyWith<$Res>? get echoReq {
    if (_value.echoReq == null) {
      return null;
    }

    return $EchoReqCopyWith<$Res>(_value.echoReq!, (value) {
      return _then(_value.copyWith(echoReq: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ActiveSymbolModelCopyWith<$Res>
    implements $ActiveSymbolModelCopyWith<$Res> {
  factory _$$_ActiveSymbolModelCopyWith(_$_ActiveSymbolModel value,
          $Res Function(_$_ActiveSymbolModel) then) =
      __$$_ActiveSymbolModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'active_symbols') List<ActiveSymbol>? activeSymbols,
      @JsonKey(name: 'echo_req') EchoReq? echoReq,
      @JsonKey(name: 'msg_type') String? msgType,
      @JsonKey(name: 'req_id') int? reqId});

  @override
  $EchoReqCopyWith<$Res>? get echoReq;
}

/// @nodoc
class __$$_ActiveSymbolModelCopyWithImpl<$Res>
    extends _$ActiveSymbolModelCopyWithImpl<$Res, _$_ActiveSymbolModel>
    implements _$$_ActiveSymbolModelCopyWith<$Res> {
  __$$_ActiveSymbolModelCopyWithImpl(
      _$_ActiveSymbolModel _value, $Res Function(_$_ActiveSymbolModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSymbols = freezed,
    Object? echoReq = freezed,
    Object? msgType = freezed,
    Object? reqId = freezed,
  }) {
    return _then(_$_ActiveSymbolModel(
      activeSymbols: freezed == activeSymbols
          ? _value._activeSymbols
          : activeSymbols // ignore: cast_nullable_to_non_nullable
              as List<ActiveSymbol>?,
      echoReq: freezed == echoReq
          ? _value.echoReq
          : echoReq // ignore: cast_nullable_to_non_nullable
              as EchoReq?,
      msgType: freezed == msgType
          ? _value.msgType
          : msgType // ignore: cast_nullable_to_non_nullable
              as String?,
      reqId: freezed == reqId
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActiveSymbolModel implements _ActiveSymbolModel {
  _$_ActiveSymbolModel(
      {@JsonKey(name: 'active_symbols') final List<ActiveSymbol>? activeSymbols,
      @JsonKey(name: 'echo_req') this.echoReq,
      @JsonKey(name: 'msg_type') this.msgType,
      @JsonKey(name: 'req_id') this.reqId})
      : _activeSymbols = activeSymbols;

  factory _$_ActiveSymbolModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveSymbolModelFromJson(json);

  final List<ActiveSymbol>? _activeSymbols;
  @override
  @JsonKey(name: 'active_symbols')
  List<ActiveSymbol>? get activeSymbols {
    final value = _activeSymbols;
    if (value == null) return null;
    if (_activeSymbols is EqualUnmodifiableListView) return _activeSymbols;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'echo_req')
  final EchoReq? echoReq;
  @override
  @JsonKey(name: 'msg_type')
  final String? msgType;
  @override
  @JsonKey(name: 'req_id')
  final int? reqId;

  @override
  String toString() {
    return 'ActiveSymbolModel(activeSymbols: $activeSymbols, echoReq: $echoReq, msgType: $msgType, reqId: $reqId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveSymbolModel &&
            const DeepCollectionEquality()
                .equals(other._activeSymbols, _activeSymbols) &&
            (identical(other.echoReq, echoReq) || other.echoReq == echoReq) &&
            (identical(other.msgType, msgType) || other.msgType == msgType) &&
            (identical(other.reqId, reqId) || other.reqId == reqId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_activeSymbols),
      echoReq,
      msgType,
      reqId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveSymbolModelCopyWith<_$_ActiveSymbolModel> get copyWith =>
      __$$_ActiveSymbolModelCopyWithImpl<_$_ActiveSymbolModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiveSymbolModelToJson(
      this,
    );
  }
}

abstract class _ActiveSymbolModel implements ActiveSymbolModel {
  factory _ActiveSymbolModel(
      {@JsonKey(name: 'active_symbols') final List<ActiveSymbol>? activeSymbols,
      @JsonKey(name: 'echo_req') final EchoReq? echoReq,
      @JsonKey(name: 'msg_type') final String? msgType,
      @JsonKey(name: 'req_id') final int? reqId}) = _$_ActiveSymbolModel;

  factory _ActiveSymbolModel.fromJson(Map<String, dynamic> json) =
      _$_ActiveSymbolModel.fromJson;

  @override
  @JsonKey(name: 'active_symbols')
  List<ActiveSymbol>? get activeSymbols;
  @override
  @JsonKey(name: 'echo_req')
  EchoReq? get echoReq;
  @override
  @JsonKey(name: 'msg_type')
  String? get msgType;
  @override
  @JsonKey(name: 'req_id')
  int? get reqId;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveSymbolModelCopyWith<_$_ActiveSymbolModel> get copyWith =>
      throw _privateConstructorUsedError;
}
