// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailFreezedImpl _$$PokemonDetailFreezedImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonDetailFreezedImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  height: (json['height'] as num).toInt(),
  weight: (json['weight'] as num).toInt(),
  types: (json['types'] as List<dynamic>)
      .map((e) => PokemonTypeFreezed.fromJson(e as Map<String, dynamic>))
      .toList(),
  stats: (json['stats'] as List<dynamic>)
      .map((e) => PokemonStatFreezed.fromJson(e as Map<String, dynamic>))
      .toList(),
  sprites: PokemonSpritesFreezed.fromJson(
    json['sprites'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$PokemonDetailFreezedImplToJson(
  _$PokemonDetailFreezedImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'height': instance.height,
  'weight': instance.weight,
  'types': instance.types,
  'stats': instance.stats,
  'sprites': instance.sprites,
};

_$PokemonTypeFreezedImpl _$$PokemonTypeFreezedImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonTypeFreezedImpl(
  slot: (json['slot'] as num).toInt(),
  type: TypeInfoFreezed.fromJson(json['type'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PokemonTypeFreezedImplToJson(
  _$PokemonTypeFreezedImpl instance,
) => <String, dynamic>{'slot': instance.slot, 'type': instance.type};

_$TypeInfoFreezedImpl _$$TypeInfoFreezedImplFromJson(
  Map<String, dynamic> json,
) => _$TypeInfoFreezedImpl(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$TypeInfoFreezedImplToJson(
  _$TypeInfoFreezedImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};

_$PokemonStatFreezedImpl _$$PokemonStatFreezedImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonStatFreezedImpl(
  baseStat: (json['base_stat'] as num).toInt(),
  effort: (json['effort'] as num).toInt(),
  stat: StatInfoFreezed.fromJson(json['stat'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PokemonStatFreezedImplToJson(
  _$PokemonStatFreezedImpl instance,
) => <String, dynamic>{
  'base_stat': instance.baseStat,
  'effort': instance.effort,
  'stat': instance.stat,
};

_$StatInfoFreezedImpl _$$StatInfoFreezedImplFromJson(
  Map<String, dynamic> json,
) => _$StatInfoFreezedImpl(
  name: json['name'] as String,
  url: json['url'] as String,
);

Map<String, dynamic> _$$StatInfoFreezedImplToJson(
  _$StatInfoFreezedImpl instance,
) => <String, dynamic>{'name': instance.name, 'url': instance.url};

_$PokemonSpritesFreezedImpl _$$PokemonSpritesFreezedImplFromJson(
  Map<String, dynamic> json,
) => _$PokemonSpritesFreezedImpl(
  frontDefault: json['front_default'] as String?,
  backDefault: json['back_default'] as String?,
  frontShiny: json['front_shiny'] as String?,
  backShiny: json['back_shiny'] as String?,
);

Map<String, dynamic> _$$PokemonSpritesFreezedImplToJson(
  _$PokemonSpritesFreezedImpl instance,
) => <String, dynamic>{
  'front_default': instance.frontDefault,
  'back_default': instance.backDefault,
  'front_shiny': instance.frontShiny,
  'back_shiny': instance.backShiny,
};
