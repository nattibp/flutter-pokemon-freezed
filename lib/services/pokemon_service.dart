
// //1
// import 'dart:convert'; // สำหรับแปลง JSON
// import 'package:http/http.dart' as http; // HTTP package --save ctrl+s
// import '../models/pokemon.dart';

// /// Pokemon Service Class
// /// ทำหน้าที่ดึงข้อมูล Pokemon จาก PokeAPI
// class PokemonService {
//   // Base URL ของ API
//   static const String baseUrl = 'https://pokeapi.co/api/v2';

//   /// ดึงรายการ Pokemon ทั้งหมด
//   /// [limit] - จำนวน Pokemon ที่ต้องการ (default: 20)
//   /// [offset] - เริ่มจากตัวที่เท่าไหร่ (default: 0)
//   Future<List<Pokemon>> getPokemonList({
//     int limit = 20,
//     int offset = 0,
//   }) async {
//     try {
//       // 1. สร้าง URL สำหรับ request
//       final url = Uri.parse('$baseUrl/pokemon?limit=$limit&offset=$offset');

//       // 2. ส่ง GET request
//       print('🌐 Fetching: $url');
//       final response = await http.get(url);

//       // 3. ตรวจสอบ status code
//       if (response.statusCode == 200) {
//         // 4. แปลง JSON string เป็น Map
//         final Map<String, dynamic> data = json.decode(response.body);

//         // 5. ดึง results array จาก response
//         // Response มีหน้าตาแบบนี้:
//         // {
//         //   "count": 1281,
//         //   "next": "https://pokeapi.co/api/v2/pokemon?offset=20&limit=20",
//         //   "previous": null,
//         //   "results": [
//         //     {"name": "bulbasaur", "url": "..."},
//         //     {"name": "ivysaur", "url": "..."},
//         //     ...
//         //   ]
//         // }
//         final List<dynamic> results = data['results'];

//         // 6. แปลง List ของ JSON เป็น List ของ Pokemon objects
//         final List<Pokemon> pokemonList = results
//             .map((json) => Pokemon.fromJson(json))
//             .toList();

//         print('✅ Loaded ${pokemonList.length} Pokemon');
//         return pokemonList;
//       } else {
//         // ถ้า status code ไม่ใช่ 200 ให้ throw error
//         throw Exception('Failed to load Pokemon: ${response.statusCode}'); //โยน ctach
//       }
//     } catch (e) { //catch ดึงที่ eccpetion throw ด้านล่าง
//       // จับ error ทั้งหมดและ throw ต่อ
//       print('❌ Error: $e');
//       throw Exception('Failed to load Pokemon: $e');
//     }
//   }
// }
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/pokemon.dart';
import '../models/pokemon_detail.dart';

class PokemonService {
  static const String baseUrl = 'https://pokeapi.co/api/v2';

  /// ดึงรายการ Pokemon
  Future<List<Pokemon>> getPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      final url = Uri.parse('$baseUrl/pokemon?limit=$limit&offset=$offset');
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final List<dynamic> results = data['results'];

        // ใช้ fromJson ที่ generate มา
        return results.map((json) => Pokemon.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load Pokemon: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load Pokemon: $e');
    }
  }

  /// ดึงข้อมูลละเอียดของ Pokemon
  Future<PokemonDetail> getPokemonDetail(int id) async {
    try {
      final url = Uri.parse('$baseUrl/pokemon/$id');
      print('🌐 Fetching detail: $url');

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        // ใช้ fromJson ที่ generate มา - จัดการ nested objects ให้หมด!
        return PokemonDetail.fromJson(data);
      } else {
        throw Exception('Failed to load Pokemon detail: ${response.statusCode}');
      }
    } catch (e) {
      print('❌ Error: $e');
      throw Exception('Failed to load Pokemon detail: $e');
    }
  }
}