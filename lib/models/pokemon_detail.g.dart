// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDetail _$PokemonDetailFromJson(Map<String, dynamic> json) =>
    PokemonDetail(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonType.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStat.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonDetailToJson(PokemonDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types.map((e) => e.toJson()).toList(),
      'stats': instance.stats.map((e) => e.toJson()).toList(),
      'sprites': instance.sprites.toJson(),
    };

PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) => PokemonType(
  slot: (json['slot'] as num).toInt(),
  type: TypeInfo.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PokemonTypeToJson(PokemonType instance) =>
    <String, dynamic>{'slot': instance.slot, 'type': instance.type};

TypeInfo _$TypeInfoFromJson(Map<String, dynamic> json) =>
    TypeInfo(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$TypeInfoToJson(TypeInfo instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};

PokemonStat _$PokemonStatFromJson(Map<String, dynamic> json) => PokemonStat(
  baseStat: (json['base_stat'] as num).toInt(),
  effort: (json['effort'] as num).toInt(),
  stat: StatInfo.fromJson(json['stat'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PokemonStatToJson(PokemonStat instance) =>
    <String, dynamic>{
      'base_stat': instance.baseStat,
      'effort': instance.effort,
      'stat': instance.stat,
    };

StatInfo _$StatInfoFromJson(Map<String, dynamic> json) =>
    StatInfo(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$StatInfoToJson(StatInfo instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};

PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) =>
    PokemonSprites(
      frontDefault: json['front_default'] as String?,
      backDefault: json['back_default'] as String?,
      frontShiny: json['front_shiny'] as String?,
      backShiny: json['back_shiny'] as String?,
    );

Map<String, dynamic> _$PokemonSpritesToJson(PokemonSprites instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'back_default': instance.backDefault,
      'front_shiny': instance.frontShiny,
      'back_shiny': instance.backShiny,
    };
