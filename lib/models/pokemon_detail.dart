import 'package:json_annotation/json_annotation.dart';

part 'pokemon_detail.g.dart';

/// Pokemon Detail Model
/// ข้อมูลละเอียดของ Pokemon แต่ละตัว
@JsonSerializable(explicitToJson: true)
class PokemonDetail {
  final int id;
  final String name;
  final int height;
  final int weight;

  // ⬇️ Nested objects - ต้องใช้ explicitToJson: true
  final List<PokemonType> types;
  final List<PokemonStat> stats;
  final PokemonSprites sprites;

  const PokemonDetail({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    required this.stats,
    required this.sprites,
  });

  /// ความสูงเป็นเมตร (API ให้เป็น decimeters)
  double get heightInMeters => height / 10;

  /// น้ำหนักเป็น kg (API ให้เป็น hectograms)
  double get weightInKg => weight / 10;

  /// รายชื่อ Types
  List<String> get typeNames =>
      types.map((t) => t.type.name).toList();

  factory PokemonDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonDetailToJson(this);
}

/// Pokemon Type (เช่น fire, water, grass)
@JsonSerializable()
class PokemonType {
  final int slot;
  final TypeInfo type;

  const PokemonType({
    required this.slot,
    required this.type,
  });

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonTypeToJson(this);
}

/// Type Info
@JsonSerializable()
class TypeInfo {
  final String name;
  final String url;

  const TypeInfo({
    required this.name,
    required this.url,
  });

  factory TypeInfo.fromJson(Map<String, dynamic> json) =>
      _$TypeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TypeInfoToJson(this);
}

/// Pokemon Stat (HP, Attack, Defense, etc.)
@JsonSerializable()
class PokemonStat {
  // ⬇️ @JsonKey ใช้เมื่อชื่อ JSON key ไม่ตรงกับชื่อ field
  @JsonKey(name: 'base_stat')
  final int baseStat;

  final int effort;
  final StatInfo stat;

  const PokemonStat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  factory PokemonStat.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonStatToJson(this);
}

/// Stat Info
@JsonSerializable()
class StatInfo {
  final String name;
  final String url;

  const StatInfo({
    required this.name,
    required this.url,
  });

  factory StatInfo.fromJson(Map<String, dynamic> json) =>
      _$StatInfoFromJson(json);

  Map<String, dynamic> toJson() => _$StatInfoToJson(this);
}

/// Pokemon Sprites (รูปภาพ)
@JsonSerializable()
class PokemonSprites {
  @JsonKey(name: 'front_default')
  final String? frontDefault;

  @JsonKey(name: 'back_default')
  final String? backDefault;

  @JsonKey(name: 'front_shiny')
  final String? frontShiny;

  @JsonKey(name: 'back_shiny')
  final String? backShiny;

  const PokemonSprites({
    this.frontDefault,
    this.backDefault,
    this.frontShiny,
    this.backShiny,
  });

  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);

  Map<String, dynamic> toJson() => _$PokemonSpritesToJson(this);
}