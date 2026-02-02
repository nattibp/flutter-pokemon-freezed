// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PokemonFreezed _$PokemonFreezedFromJson(Map<String, dynamic> json) {
  return _PokemonFreezed.fromJson(json);
}

/// @nodoc
mixin _$PokemonFreezed {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this PokemonFreezed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonFreezedCopyWith<PokemonFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFreezedCopyWith<$Res> {
  factory $PokemonFreezedCopyWith(
    PokemonFreezed value,
    $Res Function(PokemonFreezed) then,
  ) = _$PokemonFreezedCopyWithImpl<$Res, PokemonFreezed>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$PokemonFreezedCopyWithImpl<$Res, $Val extends PokemonFreezed>
    implements $PokemonFreezedCopyWith<$Res> {
  _$PokemonFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonFreezedImplCopyWith<$Res>
    implements $PokemonFreezedCopyWith<$Res> {
  factory _$$PokemonFreezedImplCopyWith(
    _$PokemonFreezedImpl value,
    $Res Function(_$PokemonFreezedImpl) then,
  ) = __$$PokemonFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$PokemonFreezedImplCopyWithImpl<$Res>
    extends _$PokemonFreezedCopyWithImpl<$Res, _$PokemonFreezedImpl>
    implements _$$PokemonFreezedImplCopyWith<$Res> {
  __$$PokemonFreezedImplCopyWithImpl(
    _$PokemonFreezedImpl _value,
    $Res Function(_$PokemonFreezedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$PokemonFreezedImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonFreezedImpl extends _PokemonFreezed {
  const _$PokemonFreezedImpl({required this.name, required this.url})
    : super._();

  factory _$PokemonFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonFreezedImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'PokemonFreezed(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonFreezedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of PokemonFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonFreezedImplCopyWith<_$PokemonFreezedImpl> get copyWith =>
      __$$PokemonFreezedImplCopyWithImpl<_$PokemonFreezedImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonFreezedImplToJson(this);
  }
}

abstract class _PokemonFreezed extends PokemonFreezed {
  const factory _PokemonFreezed({
    required final String name,
    required final String url,
  }) = _$PokemonFreezedImpl;
  const _PokemonFreezed._() : super._();

  factory _PokemonFreezed.fromJson(Map<String, dynamic> json) =
      _$PokemonFreezedImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of PokemonFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonFreezedImplCopyWith<_$PokemonFreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
