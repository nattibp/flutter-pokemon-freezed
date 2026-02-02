/*//1&2
/// Pokemon Model Class
/// ใช้เก็บข้อมูล Pokemon ที่ได้จาก API
class Pokemon {
  final String name;
  final String url;

  // Constructor
  Pokemon({
    required this.name,
    required this.url,
  });

  /// ดึง ID จาก URL
  /// URL มีรูปแบบ: https://pokeapi.co/api/v2/pokemon/1/
  /// เราต้องดึงเลข 1 ออกมา
  int get id {
    // แยก URL ด้วย / แล้วเอาตัวเลขก่อนสุดท้าย
    final parts = url.split('/');
    // parts จะเป็น ['https:', '', 'pokeapi.co', 'api', 'v2', 'pokemon', '1', '']
    // เราต้องการ index ที่ -2 (ตัวก่อนสุดท้าย)
    return int.parse(parts[parts.length - 2]);
  }

  /// สร้าง URL รูปภาพ Pokemon
  String get imageUrl {
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';
  }

  /// Factory constructor สำหรับสร้าง Pokemon จาก JSON
  /// JSON ที่ได้จาก API มีหน้าตาแบบนี้:
  /// {
  ///   "name": "bulbasaur",
  ///   "url": "https://pokeapi.co/api/v2/pokemon/1/"
  /// }
  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'] as String,
      url: json['url'] as String,
    );
  }

  /// แปลง Pokemon กลับเป็น JSON (ไว้ใช้ในอนาคต)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }

  @override
  String toString() {
    return 'Pokemon(name: $name, id: $id)';
  }
}*/

//3
import 'package:json_annotation/json_annotation.dart';

// ⬇️ part directive - บอกว่าไฟล์นี้มีส่วนที่ generate
part 'pokemon.g.dart';

/// Pokemon Model ที่ใช้ json_serializable
/// Annotations จะบอก generator ว่าต้องสร้างอะไรบ้าง
@JsonSerializable()
class Pokemon {
  final String name;
  final String url;

  const Pokemon({
    required this.name,
    required this.url,
  });

  /// Getter สำหรับ ID
  int get id {
    final parts = url.split('/');
    return int.parse(parts[parts.length - 2]);
  }

  /// Getter สำหรับ Image URL
  String get imageUrl {
    return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';
  }

  /// Factory constructor จาก JSON , JsonSerializableข้อมูลตรงนี้มาก path ยาว
  /// _$PokemonFromJson จะถูก generate ในไฟล์ .g.dart
  factory Pokemon.fromJson(Map<String, dynamic> json) => _$PokemonFromJson(json);

  /// แปลงเป็น JSON  ,  auto gen
  /// _$PokemonToJson จะถูก generate ในไฟล์ .g.dart
  Map<String, dynamic> toJson() => _$PokemonToJson(this);

  @override
  String toString() => 'Pokemon(name: $name, id: $id)';
}