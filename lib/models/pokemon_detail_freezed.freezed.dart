// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PokemonDetailFreezed _$PokemonDetailFreezedFromJson(Map<String, dynamic> json) {
  return _PokemonDetailFreezed.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetailFreezed {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<PokemonTypeFreezed> get types => throw _privateConstructorUsedError;
  List<PokemonStatFreezed> get stats => throw _privateConstructorUsedError;
  PokemonSpritesFreezed get sprites => throw _privateConstructorUsedError;

  /// Serializes this PokemonDetailFreezed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonDetailFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonDetailFreezedCopyWith<PokemonDetailFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailFreezedCopyWith<$Res> {
  factory $PokemonDetailFreezedCopyWith(
    PokemonDetailFreezed value,
    $Res Function(PokemonDetailFreezed) then,
  ) = _$PokemonDetailFreezedCopyWithImpl<$Res, PokemonDetailFreezed>;
  @useResult
  $Res call({
    int id,
    String name,
    int height,
    int weight,
    List<PokemonTypeFreezed> types,
    List<PokemonStatFreezed> stats,
    PokemonSpritesFreezed sprites,
  });

  $PokemonSpritesFreezedCopyWith<$Res> get sprites;
}

/// @nodoc
class _$PokemonDetailFreezedCopyWithImpl<
  $Res,
  $Val extends PokemonDetailFreezed
>
    implements $PokemonDetailFreezedCopyWith<$Res> {
  _$PokemonDetailFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonDetailFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? stats = null,
    Object? sprites = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            height: null == height
                ? _value.height
                : height // ignore: cast_nullable_to_non_nullable
                      as int,
            weight: null == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as int,
            types: null == types
                ? _value.types
                : types // ignore: cast_nullable_to_non_nullable
                      as List<PokemonTypeFreezed>,
            stats: null == stats
                ? _value.stats
                : stats // ignore: cast_nullable_to_non_nullable
                      as List<PokemonStatFreezed>,
            sprites: null == sprites
                ? _value.sprites
                : sprites // ignore: cast_nullable_to_non_nullable
                      as PokemonSpritesFreezed,
          )
          as $Val,
    );
  }

  /// Create a copy of PokemonDetailFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PokemonSpritesFreezedCopyWith<$Res> get sprites {
    return $PokemonSpritesFreezedCopyWith<$Res>(_value.sprites, (value) {
      return _then(_value.copyWith(sprites: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonDetailFreezedImplCopyWith<$Res>
    implements $PokemonDetailFreezedCopyWith<$Res> {
  factory _$$PokemonDetailFreezedImplCopyWith(
    _$PokemonDetailFreezedImpl value,
    $Res Function(_$PokemonDetailFreezedImpl) then,
  ) = __$$PokemonDetailFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String name,
    int height,
    int weight,
    List<PokemonTypeFreezed> types,
    List<PokemonStatFreezed> stats,
    PokemonSpritesFreezed sprites,
  });

  @override
  $PokemonSpritesFreezedCopyWith<$Res> get sprites;
}

/// @nodoc
class __$$PokemonDetailFreezedImplCopyWithImpl<$Res>
    extends _$PokemonDetailFreezedCopyWithImpl<$Res, _$PokemonDetailFreezedImpl>
    implements _$$PokemonDetailFreezedImplCopyWith<$Res> {
  __$$PokemonDetailFreezedImplCopyWithImpl(
    _$PokemonDetailFreezedImpl _value,
    $Res Function(_$PokemonDetailFreezedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonDetailFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? stats = null,
    Object? sprites = null,
  }) {
    return _then(
      _$PokemonDetailFreezedImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        height: null == height
            ? _value.height
            : height // ignore: cast_nullable_to_non_nullable
                  as int,
        weight: null == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as int,
        types: null == types
            ? _value._types
            : types // ignore: cast_nullable_to_non_nullable
                  as List<PokemonTypeFreezed>,
        stats: null == stats
            ? _value._stats
            : stats // ignore: cast_nullable_to_non_nullable
                  as List<PokemonStatFreezed>,
        sprites: null == sprites
            ? _value.sprites
            : sprites // ignore: cast_nullable_to_non_nullable
                  as PokemonSpritesFreezed,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDetailFreezedImpl extends _PokemonDetailFreezed {
  const _$PokemonDetailFreezedImpl({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required final List<PokemonTypeFreezed> types,
    required final List<PokemonStatFreezed> stats,
    required this.sprites,
  }) : _types = types,
       _stats = stats,
       super._();

  factory _$PokemonDetailFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDetailFreezedImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  final List<PokemonTypeFreezed> _types;
  @override
  List<PokemonTypeFreezed> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<PokemonStatFreezed> _stats;
  @override
  List<PokemonStatFreezed> get stats {
    if (_stats is EqualUnmodifiableListView) return _stats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stats);
  }

  @override
  final PokemonSpritesFreezed sprites;

  @override
  String toString() {
    return 'PokemonDetailFreezed(id: $id, name: $name, height: $height, weight: $weight, types: $types, stats: $stats, sprites: $sprites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailFreezedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._stats, _stats) &&
            (identical(other.sprites, sprites) || other.sprites == sprites));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    height,
    weight,
    const DeepCollectionEquality().hash(_types),
    const DeepCollectionEquality().hash(_stats),
    sprites,
  );

  /// Create a copy of PokemonDetailFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailFreezedImplCopyWith<_$PokemonDetailFreezedImpl>
  get copyWith =>
      __$$PokemonDetailFreezedImplCopyWithImpl<_$PokemonDetailFreezedImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDetailFreezedImplToJson(this);
  }
}

abstract class _PokemonDetailFreezed extends PokemonDetailFreezed {
  const factory _PokemonDetailFreezed({
    required final int id,
    required final String name,
    required final int height,
    required final int weight,
    required final List<PokemonTypeFreezed> types,
    required final List<PokemonStatFreezed> stats,
    required final PokemonSpritesFreezed sprites,
  }) = _$PokemonDetailFreezedImpl;
  const _PokemonDetailFreezed._() : super._();

  factory _PokemonDetailFreezed.fromJson(Map<String, dynamic> json) =
      _$PokemonDetailFreezedImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  List<PokemonTypeFreezed> get types;
  @override
  List<PokemonStatFreezed> get stats;
  @override
  PokemonSpritesFreezed get sprites;

  /// Create a copy of PokemonDetailFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonDetailFreezedImplCopyWith<_$PokemonDetailFreezedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PokemonTypeFreezed _$PokemonTypeFreezedFromJson(Map<String, dynamic> json) {
  return _PokemonTypeFreezed.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeFreezed {
  int get slot => throw _privateConstructorUsedError;
  TypeInfoFreezed get type => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeFreezed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeFreezedCopyWith<PokemonTypeFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeFreezedCopyWith<$Res> {
  factory $PokemonTypeFreezedCopyWith(
    PokemonTypeFreezed value,
    $Res Function(PokemonTypeFreezed) then,
  ) = _$PokemonTypeFreezedCopyWithImpl<$Res, PokemonTypeFreezed>;
  @useResult
  $Res call({int slot, TypeInfoFreezed type});

  $TypeInfoFreezedCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeFreezedCopyWithImpl<$Res, $Val extends PokemonTypeFreezed>
    implements $PokemonTypeFreezedCopyWith<$Res> {
  _$PokemonTypeFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? slot = null, Object? type = null}) {
    return _then(
      _value.copyWith(
            slot: null == slot
                ? _value.slot
                : slot // ignore: cast_nullable_to_non_nullable
                      as int,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as TypeInfoFreezed,
          )
          as $Val,
    );
  }

  /// Create a copy of PokemonTypeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TypeInfoFreezedCopyWith<$Res> get type {
    return $TypeInfoFreezedCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeFreezedImplCopyWith<$Res>
    implements $PokemonTypeFreezedCopyWith<$Res> {
  factory _$$PokemonTypeFreezedImplCopyWith(
    _$PokemonTypeFreezedImpl value,
    $Res Function(_$PokemonTypeFreezedImpl) then,
  ) = __$$PokemonTypeFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, TypeInfoFreezed type});

  @override
  $TypeInfoFreezedCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeFreezedImplCopyWithImpl<$Res>
    extends _$PokemonTypeFreezedCopyWithImpl<$Res, _$PokemonTypeFreezedImpl>
    implements _$$PokemonTypeFreezedImplCopyWith<$Res> {
  __$$PokemonTypeFreezedImplCopyWithImpl(
    _$PokemonTypeFreezedImpl _value,
    $Res Function(_$PokemonTypeFreezedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonTypeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? slot = null, Object? type = null}) {
    return _then(
      _$PokemonTypeFreezedImpl(
        slot: null == slot
            ? _value.slot
            : slot // ignore: cast_nullable_to_non_nullable
                  as int,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as TypeInfoFreezed,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeFreezedImpl implements _PokemonTypeFreezed {
  const _$PokemonTypeFreezedImpl({required this.slot, required this.type});

  factory _$PokemonTypeFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeFreezedImplFromJson(json);

  @override
  final int slot;
  @override
  final TypeInfoFreezed type;

  @override
  String toString() {
    return 'PokemonTypeFreezed(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeFreezedImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  /// Create a copy of PokemonTypeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeFreezedImplCopyWith<_$PokemonTypeFreezedImpl> get copyWith =>
      __$$PokemonTypeFreezedImplCopyWithImpl<_$PokemonTypeFreezedImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeFreezedImplToJson(this);
  }
}

abstract class _PokemonTypeFreezed implements PokemonTypeFreezed {
  const factory _PokemonTypeFreezed({
    required final int slot,
    required final TypeInfoFreezed type,
  }) = _$PokemonTypeFreezedImpl;

  factory _PokemonTypeFreezed.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeFreezedImpl.fromJson;

  @override
  int get slot;
  @override
  TypeInfoFreezed get type;

  /// Create a copy of PokemonTypeFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeFreezedImplCopyWith<_$PokemonTypeFreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeInfoFreezed _$TypeInfoFreezedFromJson(Map<String, dynamic> json) {
  return _TypeInfoFreezed.fromJson(json);
}

/// @nodoc
mixin _$TypeInfoFreezed {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this TypeInfoFreezed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeInfoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeInfoFreezedCopyWith<TypeInfoFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeInfoFreezedCopyWith<$Res> {
  factory $TypeInfoFreezedCopyWith(
    TypeInfoFreezed value,
    $Res Function(TypeInfoFreezed) then,
  ) = _$TypeInfoFreezedCopyWithImpl<$Res, TypeInfoFreezed>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$TypeInfoFreezedCopyWithImpl<$Res, $Val extends TypeInfoFreezed>
    implements $TypeInfoFreezedCopyWith<$Res> {
  _$TypeInfoFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeInfoFreezed
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
abstract class _$$TypeInfoFreezedImplCopyWith<$Res>
    implements $TypeInfoFreezedCopyWith<$Res> {
  factory _$$TypeInfoFreezedImplCopyWith(
    _$TypeInfoFreezedImpl value,
    $Res Function(_$TypeInfoFreezedImpl) then,
  ) = __$$TypeInfoFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$TypeInfoFreezedImplCopyWithImpl<$Res>
    extends _$TypeInfoFreezedCopyWithImpl<$Res, _$TypeInfoFreezedImpl>
    implements _$$TypeInfoFreezedImplCopyWith<$Res> {
  __$$TypeInfoFreezedImplCopyWithImpl(
    _$TypeInfoFreezedImpl _value,
    $Res Function(_$TypeInfoFreezedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TypeInfoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$TypeInfoFreezedImpl(
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
class _$TypeInfoFreezedImpl implements _TypeInfoFreezed {
  const _$TypeInfoFreezedImpl({required this.name, required this.url});

  factory _$TypeInfoFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeInfoFreezedImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'TypeInfoFreezed(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeInfoFreezedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of TypeInfoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeInfoFreezedImplCopyWith<_$TypeInfoFreezedImpl> get copyWith =>
      __$$TypeInfoFreezedImplCopyWithImpl<_$TypeInfoFreezedImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeInfoFreezedImplToJson(this);
  }
}

abstract class _TypeInfoFreezed implements TypeInfoFreezed {
  const factory _TypeInfoFreezed({
    required final String name,
    required final String url,
  }) = _$TypeInfoFreezedImpl;

  factory _TypeInfoFreezed.fromJson(Map<String, dynamic> json) =
      _$TypeInfoFreezedImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of TypeInfoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeInfoFreezedImplCopyWith<_$TypeInfoFreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonStatFreezed _$PokemonStatFreezedFromJson(Map<String, dynamic> json) {
  return _PokemonStatFreezed.fromJson(json);
}

/// @nodoc
mixin _$PokemonStatFreezed {
  @JsonKey(name: 'base_stat')
  int get baseStat => throw _privateConstructorUsedError;
  int get effort => throw _privateConstructorUsedError;
  StatInfoFreezed get stat => throw _privateConstructorUsedError;

  /// Serializes this PokemonStatFreezed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonStatFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonStatFreezedCopyWith<PokemonStatFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonStatFreezedCopyWith<$Res> {
  factory $PokemonStatFreezedCopyWith(
    PokemonStatFreezed value,
    $Res Function(PokemonStatFreezed) then,
  ) = _$PokemonStatFreezedCopyWithImpl<$Res, PokemonStatFreezed>;
  @useResult
  $Res call({
    @JsonKey(name: 'base_stat') int baseStat,
    int effort,
    StatInfoFreezed stat,
  });

  $StatInfoFreezedCopyWith<$Res> get stat;
}

/// @nodoc
class _$PokemonStatFreezedCopyWithImpl<$Res, $Val extends PokemonStatFreezed>
    implements $PokemonStatFreezedCopyWith<$Res> {
  _$PokemonStatFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonStatFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(
      _value.copyWith(
            baseStat: null == baseStat
                ? _value.baseStat
                : baseStat // ignore: cast_nullable_to_non_nullable
                      as int,
            effort: null == effort
                ? _value.effort
                : effort // ignore: cast_nullable_to_non_nullable
                      as int,
            stat: null == stat
                ? _value.stat
                : stat // ignore: cast_nullable_to_non_nullable
                      as StatInfoFreezed,
          )
          as $Val,
    );
  }

  /// Create a copy of PokemonStatFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatInfoFreezedCopyWith<$Res> get stat {
    return $StatInfoFreezedCopyWith<$Res>(_value.stat, (value) {
      return _then(_value.copyWith(stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonStatFreezedImplCopyWith<$Res>
    implements $PokemonStatFreezedCopyWith<$Res> {
  factory _$$PokemonStatFreezedImplCopyWith(
    _$PokemonStatFreezedImpl value,
    $Res Function(_$PokemonStatFreezedImpl) then,
  ) = __$$PokemonStatFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'base_stat') int baseStat,
    int effort,
    StatInfoFreezed stat,
  });

  @override
  $StatInfoFreezedCopyWith<$Res> get stat;
}

/// @nodoc
class __$$PokemonStatFreezedImplCopyWithImpl<$Res>
    extends _$PokemonStatFreezedCopyWithImpl<$Res, _$PokemonStatFreezedImpl>
    implements _$$PokemonStatFreezedImplCopyWith<$Res> {
  __$$PokemonStatFreezedImplCopyWithImpl(
    _$PokemonStatFreezedImpl _value,
    $Res Function(_$PokemonStatFreezedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonStatFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseStat = null,
    Object? effort = null,
    Object? stat = null,
  }) {
    return _then(
      _$PokemonStatFreezedImpl(
        baseStat: null == baseStat
            ? _value.baseStat
            : baseStat // ignore: cast_nullable_to_non_nullable
                  as int,
        effort: null == effort
            ? _value.effort
            : effort // ignore: cast_nullable_to_non_nullable
                  as int,
        stat: null == stat
            ? _value.stat
            : stat // ignore: cast_nullable_to_non_nullable
                  as StatInfoFreezed,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonStatFreezedImpl implements _PokemonStatFreezed {
  const _$PokemonStatFreezedImpl({
    @JsonKey(name: 'base_stat') required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory _$PokemonStatFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonStatFreezedImplFromJson(json);

  @override
  @JsonKey(name: 'base_stat')
  final int baseStat;
  @override
  final int effort;
  @override
  final StatInfoFreezed stat;

  @override
  String toString() {
    return 'PokemonStatFreezed(baseStat: $baseStat, effort: $effort, stat: $stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonStatFreezedImpl &&
            (identical(other.baseStat, baseStat) ||
                other.baseStat == baseStat) &&
            (identical(other.effort, effort) || other.effort == effort) &&
            (identical(other.stat, stat) || other.stat == stat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, baseStat, effort, stat);

  /// Create a copy of PokemonStatFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonStatFreezedImplCopyWith<_$PokemonStatFreezedImpl> get copyWith =>
      __$$PokemonStatFreezedImplCopyWithImpl<_$PokemonStatFreezedImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonStatFreezedImplToJson(this);
  }
}

abstract class _PokemonStatFreezed implements PokemonStatFreezed {
  const factory _PokemonStatFreezed({
    @JsonKey(name: 'base_stat') required final int baseStat,
    required final int effort,
    required final StatInfoFreezed stat,
  }) = _$PokemonStatFreezedImpl;

  factory _PokemonStatFreezed.fromJson(Map<String, dynamic> json) =
      _$PokemonStatFreezedImpl.fromJson;

  @override
  @JsonKey(name: 'base_stat')
  int get baseStat;
  @override
  int get effort;
  @override
  StatInfoFreezed get stat;

  /// Create a copy of PokemonStatFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonStatFreezedImplCopyWith<_$PokemonStatFreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatInfoFreezed _$StatInfoFreezedFromJson(Map<String, dynamic> json) {
  return _StatInfoFreezed.fromJson(json);
}

/// @nodoc
mixin _$StatInfoFreezed {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Serializes this StatInfoFreezed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatInfoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatInfoFreezedCopyWith<StatInfoFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatInfoFreezedCopyWith<$Res> {
  factory $StatInfoFreezedCopyWith(
    StatInfoFreezed value,
    $Res Function(StatInfoFreezed) then,
  ) = _$StatInfoFreezedCopyWithImpl<$Res, StatInfoFreezed>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$StatInfoFreezedCopyWithImpl<$Res, $Val extends StatInfoFreezed>
    implements $StatInfoFreezedCopyWith<$Res> {
  _$StatInfoFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatInfoFreezed
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
abstract class _$$StatInfoFreezedImplCopyWith<$Res>
    implements $StatInfoFreezedCopyWith<$Res> {
  factory _$$StatInfoFreezedImplCopyWith(
    _$StatInfoFreezedImpl value,
    $Res Function(_$StatInfoFreezedImpl) then,
  ) = __$$StatInfoFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$StatInfoFreezedImplCopyWithImpl<$Res>
    extends _$StatInfoFreezedCopyWithImpl<$Res, _$StatInfoFreezedImpl>
    implements _$$StatInfoFreezedImplCopyWith<$Res> {
  __$$StatInfoFreezedImplCopyWithImpl(
    _$StatInfoFreezedImpl _value,
    $Res Function(_$StatInfoFreezedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatInfoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? url = null}) {
    return _then(
      _$StatInfoFreezedImpl(
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
class _$StatInfoFreezedImpl implements _StatInfoFreezed {
  const _$StatInfoFreezedImpl({required this.name, required this.url});

  factory _$StatInfoFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatInfoFreezedImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'StatInfoFreezed(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatInfoFreezedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  /// Create a copy of StatInfoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatInfoFreezedImplCopyWith<_$StatInfoFreezedImpl> get copyWith =>
      __$$StatInfoFreezedImplCopyWithImpl<_$StatInfoFreezedImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StatInfoFreezedImplToJson(this);
  }
}

abstract class _StatInfoFreezed implements StatInfoFreezed {
  const factory _StatInfoFreezed({
    required final String name,
    required final String url,
  }) = _$StatInfoFreezedImpl;

  factory _StatInfoFreezed.fromJson(Map<String, dynamic> json) =
      _$StatInfoFreezedImpl.fromJson;

  @override
  String get name;
  @override
  String get url;

  /// Create a copy of StatInfoFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatInfoFreezedImplCopyWith<_$StatInfoFreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonSpritesFreezed _$PokemonSpritesFreezedFromJson(
  Map<String, dynamic> json,
) {
  return _PokemonSpritesFreezed.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpritesFreezed {
  @JsonKey(name: 'front_default')
  String? get frontDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_default')
  String? get backDefault => throw _privateConstructorUsedError;
  @JsonKey(name: 'front_shiny')
  String? get frontShiny => throw _privateConstructorUsedError;
  @JsonKey(name: 'back_shiny')
  String? get backShiny => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpritesFreezed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpritesFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpritesFreezedCopyWith<PokemonSpritesFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpritesFreezedCopyWith<$Res> {
  factory $PokemonSpritesFreezedCopyWith(
    PokemonSpritesFreezed value,
    $Res Function(PokemonSpritesFreezed) then,
  ) = _$PokemonSpritesFreezedCopyWithImpl<$Res, PokemonSpritesFreezed>;
  @useResult
  $Res call({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'back_shiny') String? backShiny,
  });
}

/// @nodoc
class _$PokemonSpritesFreezedCopyWithImpl<
  $Res,
  $Val extends PokemonSpritesFreezed
>
    implements $PokemonSpritesFreezedCopyWith<$Res> {
  _$PokemonSpritesFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpritesFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? backDefault = freezed,
    Object? frontShiny = freezed,
    Object? backShiny = freezed,
  }) {
    return _then(
      _value.copyWith(
            frontDefault: freezed == frontDefault
                ? _value.frontDefault
                : frontDefault // ignore: cast_nullable_to_non_nullable
                      as String?,
            backDefault: freezed == backDefault
                ? _value.backDefault
                : backDefault // ignore: cast_nullable_to_non_nullable
                      as String?,
            frontShiny: freezed == frontShiny
                ? _value.frontShiny
                : frontShiny // ignore: cast_nullable_to_non_nullable
                      as String?,
            backShiny: freezed == backShiny
                ? _value.backShiny
                : backShiny // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PokemonSpritesFreezedImplCopyWith<$Res>
    implements $PokemonSpritesFreezedCopyWith<$Res> {
  factory _$$PokemonSpritesFreezedImplCopyWith(
    _$PokemonSpritesFreezedImpl value,
    $Res Function(_$PokemonSpritesFreezedImpl) then,
  ) = __$$PokemonSpritesFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'back_shiny') String? backShiny,
  });
}

/// @nodoc
class __$$PokemonSpritesFreezedImplCopyWithImpl<$Res>
    extends
        _$PokemonSpritesFreezedCopyWithImpl<$Res, _$PokemonSpritesFreezedImpl>
    implements _$$PokemonSpritesFreezedImplCopyWith<$Res> {
  __$$PokemonSpritesFreezedImplCopyWithImpl(
    _$PokemonSpritesFreezedImpl _value,
    $Res Function(_$PokemonSpritesFreezedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PokemonSpritesFreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = freezed,
    Object? backDefault = freezed,
    Object? frontShiny = freezed,
    Object? backShiny = freezed,
  }) {
    return _then(
      _$PokemonSpritesFreezedImpl(
        frontDefault: freezed == frontDefault
            ? _value.frontDefault
            : frontDefault // ignore: cast_nullable_to_non_nullable
                  as String?,
        backDefault: freezed == backDefault
            ? _value.backDefault
            : backDefault // ignore: cast_nullable_to_non_nullable
                  as String?,
        frontShiny: freezed == frontShiny
            ? _value.frontShiny
            : frontShiny // ignore: cast_nullable_to_non_nullable
                  as String?,
        backShiny: freezed == backShiny
            ? _value.backShiny
            : backShiny // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpritesFreezedImpl implements _PokemonSpritesFreezed {
  const _$PokemonSpritesFreezedImpl({
    @JsonKey(name: 'front_default') this.frontDefault,
    @JsonKey(name: 'back_default') this.backDefault,
    @JsonKey(name: 'front_shiny') this.frontShiny,
    @JsonKey(name: 'back_shiny') this.backShiny,
  });

  factory _$PokemonSpritesFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpritesFreezedImplFromJson(json);

  @override
  @JsonKey(name: 'front_default')
  final String? frontDefault;
  @override
  @JsonKey(name: 'back_default')
  final String? backDefault;
  @override
  @JsonKey(name: 'front_shiny')
  final String? frontShiny;
  @override
  @JsonKey(name: 'back_shiny')
  final String? backShiny;

  @override
  String toString() {
    return 'PokemonSpritesFreezed(frontDefault: $frontDefault, backDefault: $backDefault, frontShiny: $frontShiny, backShiny: $backShiny)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpritesFreezedImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.backDefault, backDefault) ||
                other.backDefault == backDefault) &&
            (identical(other.frontShiny, frontShiny) ||
                other.frontShiny == frontShiny) &&
            (identical(other.backShiny, backShiny) ||
                other.backShiny == backShiny));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    frontDefault,
    backDefault,
    frontShiny,
    backShiny,
  );

  /// Create a copy of PokemonSpritesFreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpritesFreezedImplCopyWith<_$PokemonSpritesFreezedImpl>
  get copyWith =>
      __$$PokemonSpritesFreezedImplCopyWithImpl<_$PokemonSpritesFreezedImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpritesFreezedImplToJson(this);
  }
}

abstract class _PokemonSpritesFreezed implements PokemonSpritesFreezed {
  const factory _PokemonSpritesFreezed({
    @JsonKey(name: 'front_default') final String? frontDefault,
    @JsonKey(name: 'back_default') final String? backDefault,
    @JsonKey(name: 'front_shiny') final String? frontShiny,
    @JsonKey(name: 'back_shiny') final String? backShiny,
  }) = _$PokemonSpritesFreezedImpl;

  factory _PokemonSpritesFreezed.fromJson(Map<String, dynamic> json) =
      _$PokemonSpritesFreezedImpl.fromJson;

  @override
  @JsonKey(name: 'front_default')
  String? get frontDefault;
  @override
  @JsonKey(name: 'back_default')
  String? get backDefault;
  @override
  @JsonKey(name: 'front_shiny')
  String? get frontShiny;
  @override
  @JsonKey(name: 'back_shiny')
  String? get backShiny;

  /// Create a copy of PokemonSpritesFreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpritesFreezedImplCopyWith<_$PokemonSpritesFreezedImpl>
  get copyWith => throw _privateConstructorUsedError;
}
