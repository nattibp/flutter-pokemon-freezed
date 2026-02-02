import 'package:freezed_annotation/freezed_annotation.dart';

// ⬇️ ต้องมี 2 parts: .freezed.dart และ .g.dart
part 'pokemon_freezed.freezed.dart';
part 'pokemon_freezed.g.dart';

/// Pokemon Model ด้วย Freezed
/// - Immutable
/// - มี copyWith, ==, hashCode, toString อัตโนมัติ
/// - รองรับ JSON
@freezed
class PokemonFreezed with _$PokemonFreezed {
  // ⬇️ const factory constructor
  const factory PokemonFreezed({
    required String name,
    required String url,
  }) = _PokemonFreezed;

  // ⬇️ Private constructor สำหรับ custom getters
  const PokemonFreezed._();

  /// ดึง ID จาก URL
  int get id {
    final parts = url.split('/');
    return int.parse(parts[parts.length - 2]);
  }

  /// URL รูปภาพ
  String get imageUrl {
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';
  }

  // ⬇️ Factory สำหรับ JSON
  factory PokemonFreezed.fromJson(Map<String, dynamic> json) =>
      _$PokemonFreezedFromJson(json);
}