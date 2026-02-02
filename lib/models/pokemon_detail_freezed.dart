import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail_freezed.freezed.dart';
part 'pokemon_detail_freezed.g.dart';

/// Pokemon Detail Model ด้วย Freezed
@freezed
class PokemonDetailFreezed with _$PokemonDetailFreezed {
  const factory PokemonDetailFreezed({
    required int id,
    required String name,
    required int height,
    required int weight,
    required List<PokemonTypeFreezed> types,
    required List<PokemonStatFreezed> stats,
    required PokemonSpritesFreezed sprites,
  }) = _PokemonDetailFreezed;

  const PokemonDetailFreezed._();

  /// ความสูงเป็นเมตร
  double get heightInMeters => height / 10;

  /// น้ำหนักเป็น kg
  double get weightInKg => weight / 10;

  /// รายชื่อ Types
  List<String> get typeNames =>
      types.map((t) => t.type.name).toList();

  factory PokemonDetailFreezed.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailFreezedFromJson(json);
}

/// Pokemon Type
@freezed
class PokemonTypeFreezed with _$PokemonTypeFreezed {
  const factory PokemonTypeFreezed({
    required int slot,
    required TypeInfoFreezed type,
  }) = _PokemonTypeFreezed;

  factory PokemonTypeFreezed.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFreezedFromJson(json);
}

/// Type Info
@freezed
class TypeInfoFreezed with _$TypeInfoFreezed {
  const factory TypeInfoFreezed({
    required String name,
    required String url,
  }) = _TypeInfoFreezed;

  factory TypeInfoFreezed.fromJson(Map<String, dynamic> json) =>
      _$TypeInfoFreezedFromJson(json);
}

/// Pokemon Stat
@freezed
class PokemonStatFreezed with _$PokemonStatFreezed {
  const factory PokemonStatFreezed({
    @JsonKey(name: 'base_stat') required int baseStat,
    required int effort,
    required StatInfoFreezed stat,
  }) = _PokemonStatFreezed;

  factory PokemonStatFreezed.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatFreezedFromJson(json);
}

/// Stat Info
@freezed
class StatInfoFreezed with _$StatInfoFreezed {
  const factory StatInfoFreezed({
    required String name,
    required String url,
  }) = _StatInfoFreezed;

  factory StatInfoFreezed.fromJson(Map<String, dynamic> json) =>
      _$StatInfoFreezedFromJson(json);
}

/// Pokemon Sprites
@freezed
class PokemonSpritesFreezed with _$PokemonSpritesFreezed {
  const factory PokemonSpritesFreezed({
    @JsonKey(name: 'front_default') String? frontDefault,
    @JsonKey(name: 'back_default') String? backDefault,
    @JsonKey(name: 'front_shiny') String? frontShiny,
    @JsonKey(name: 'back_shiny') String? backShiny,
  }) = _PokemonSpritesFreezed;

  factory PokemonSpritesFreezed.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFreezedFromJson(json);
}