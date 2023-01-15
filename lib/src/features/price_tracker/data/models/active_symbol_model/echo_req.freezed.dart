// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'echo_req.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EchoReq _$EchoReqFromJson(Map<String, dynamic> json) {
  return _EchoReq.fromJson(json);
}

/// @nodoc
mixin _$EchoReq {
  @JsonKey(name: 'active_symbols')
  String? get activeSymbols => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_type')
  String? get productType => throw _privateConstructorUsedError;
  @JsonKey(name: 'req_id')
  int? get reqId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EchoReqCopyWith<EchoReq> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EchoReqCopyWith<$Res> {
  factory $EchoReqCopyWith(EchoReq value, $Res Function(EchoReq) then) =
      _$EchoReqCopyWithImpl<$Res, EchoReq>;
  @useResult
  $Res call(
      {@JsonKey(name: 'active_symbols') String? activeSymbols,
      @JsonKey(name: 'product_type') String? productType,
      @JsonKey(name: 'req_id') int? reqId});
}

/// @nodoc
class _$EchoReqCopyWithImpl<$Res, $Val extends EchoReq>
    implements $EchoReqCopyWith<$Res> {
  _$EchoReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSymbols = freezed,
    Object? productType = freezed,
    Object? reqId = freezed,
  }) {
    return _then(_value.copyWith(
      activeSymbols: freezed == activeSymbols
          ? _value.activeSymbols
          : activeSymbols // ignore: cast_nullable_to_non_nullable
              as String?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as String?,
      reqId: freezed == reqId
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EchoReqCopyWith<$Res> implements $EchoReqCopyWith<$Res> {
  factory _$$_EchoReqCopyWith(
          _$_EchoReq value, $Res Function(_$_EchoReq) then) =
      __$$_EchoReqCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'active_symbols') String? activeSymbols,
      @JsonKey(name: 'product_type') String? productType,
      @JsonKey(name: 'req_id') int? reqId});
}

/// @nodoc
class __$$_EchoReqCopyWithImpl<$Res>
    extends _$EchoReqCopyWithImpl<$Res, _$_EchoReq>
    implements _$$_EchoReqCopyWith<$Res> {
  __$$_EchoReqCopyWithImpl(_$_EchoReq _value, $Res Function(_$_EchoReq) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeSymbols = freezed,
    Object? productType = freezed,
    Object? reqId = freezed,
  }) {
    return _then(_$_EchoReq(
      activeSymbols: freezed == activeSymbols
          ? _value.activeSymbols
          : activeSymbols // ignore: cast_nullable_to_non_nullable
              as String?,
      productType: freezed == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
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
class _$_EchoReq implements _EchoReq {
  _$_EchoReq(
      {@JsonKey(name: 'active_symbols') this.activeSymbols,
      @JsonKey(name: 'product_type') this.productType,
      @JsonKey(name: 'req_id') this.reqId});

  factory _$_EchoReq.fromJson(Map<String, dynamic> json) =>
      _$$_EchoReqFromJson(json);

  @override
  @JsonKey(name: 'active_symbols')
  final String? activeSymbols;
  @override
  @JsonKey(name: 'product_type')
  final String? productType;
  @override
  @JsonKey(name: 'req_id')
  final int? reqId;

  @override
  String toString() {
    return 'EchoReq(activeSymbols: $activeSymbols, productType: $productType, reqId: $reqId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EchoReq &&
            (identical(other.activeSymbols, activeSymbols) ||
                other.activeSymbols == activeSymbols) &&
            (identical(other.productType, productType) ||
                other.productType == productType) &&
            (identical(other.reqId, reqId) || other.reqId == reqId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, activeSymbols, productType, reqId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EchoReqCopyWith<_$_EchoReq> get copyWith =>
      __$$_EchoReqCopyWithImpl<_$_EchoReq>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EchoReqToJson(
      this,
    );
  }
}

abstract class _EchoReq implements EchoReq {
  factory _EchoReq(
      {@JsonKey(name: 'active_symbols') final String? activeSymbols,
      @JsonKey(name: 'product_type') final String? productType,
      @JsonKey(name: 'req_id') final int? reqId}) = _$_EchoReq;

  factory _EchoReq.fromJson(Map<String, dynamic> json) = _$_EchoReq.fromJson;

  @override
  @JsonKey(name: 'active_symbols')
  String? get activeSymbols;
  @override
  @JsonKey(name: 'product_type')
  String? get productType;
  @override
  @JsonKey(name: 'req_id')
  int? get reqId;
  @override
  @JsonKey(ignore: true)
  _$$_EchoReqCopyWith<_$_EchoReq> get copyWith =>
      throw _privateConstructorUsedError;
}
