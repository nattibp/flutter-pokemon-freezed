//2
import 'package:dio/dio.dart';
import '../models/pokemon.dart';

/// Pokemon Service ที่ใช้ Dio
/// มี features มากกว่า http package
class DioPokemonService {
  // สร้าง Dio instance พร้อม configuration
  late final Dio _dio;

  DioPokemonService() {
    _dio = Dio(
      BaseOptions(
        // Base URL - ไม่ต้องพิมพ์ซ้ำทุกครั้ง
        baseUrl: 'https://pokeapi.co/api/v2',

        // Timeout settings
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),

        // Headers ที่ใช้ทุก request
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // เพิ่ม Interceptor สำหรับ logging
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print('🌐 REQUEST[${options.method}] => ${options.uri}');
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print('✅ RESPONSE[${response.statusCode}] => ${response.requestOptions.uri}');
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          print('❌ ERROR[${e.response?.statusCode}] => ${e.requestOptions.uri}');
          print('   Message: ${e.message}');
          return handler.next(e);
        },
      ),
    );
  }

  /// ดึงรายการ Pokemon
  Future<List<Pokemon>> getPokemonList({
    int limit = 20,
    int offset = 0,
  }) async {
    try {
      // Dio จะ parse JSON ให้อัตโนมัติ!
      // ไม่ต้องใช้ json.decode() เหมือน http package
      final response = await _dio.get(
        '/pokemon',
        queryParameters: {
          'limit': limit,
          'offset': offset,
        },
      );

      // response.data เป็น Map เลย ไม่ต้อง decode
      final List<dynamic> results = response.data['results'];

      return results
          .map((json) => Pokemon.fromJson(json))
          .toList();

    } on DioException catch (e) {
      // Dio มี error handling ที่ละเอียดกว่า
      throw _handleError(e);
    }
  }

  /// ดึงข้อมูล Pokemon ตัวเดียว (by ID)
  Future<Map<String, dynamic>> getPokemonDetail(int id) async {
    try {
      final response = await _dio.get('/pokemon/$id');
      return response.data;
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  /// จัดการ Error แบบละเอียด
  Exception _handleError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return Exception('⏱️ หมดเวลาเชื่อมต่อ กรุณาลองใหม่');

      case DioExceptionType.sendTimeout:
        return Exception('⏱️ หมดเวลาส่งข้อมูล กรุณาลองใหม่');

      case DioExceptionType.receiveTimeout:
        return Exception('⏱️ หมดเวลารับข้อมูล กรุณาลองใหม่');

      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        switch (statusCode) {
          case 400:
            return Exception('❌ Bad Request - ข้อมูลไม่ถูกต้อง');
          case 401:
            return Exception('🔒 Unauthorized - ไม่มีสิทธิ์เข้าถึง');
          case 404:
            return Exception('🔍 ไม่พบข้อมูลที่ต้องการ');
          case 500:
            return Exception('🔥 Server Error - เซิร์ฟเวอร์มีปัญหา');
          default:
            return Exception('❌ Error: $statusCode');
        }

      case DioExceptionType.cancel:
        return Exception('🚫 Request ถูกยกเลิก');

      case DioExceptionType.connectionError:
        return Exception('📡 ไม่สามารถเชื่อมต่อได้ ตรวจสอบอินเทอร์เน็ต');

      default:
        return Exception('❌ เกิดข้อผิดพลาด: ${e.message}');
    }
  }
}