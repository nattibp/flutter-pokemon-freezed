import 'package:freezed_annotation/freezed_annotation.dart';
import 'pokemon_freezed.dart';

part 'pokemon_state.freezed.dart';

/// Pokemon State - Union Type
/// จัดการ state ทั้งหมดของการโหลด Pokemon
@freezed
class PokemonState with _$PokemonState {
  /// สถานะเริ่มต้น - ยังไม่ได้โหลด
  const factory PokemonState.initial() = PokemonStateInitial;

  /// กำลังโหลด
  const factory PokemonState.loading() = PokemonStateLoading;

  /// โหลดสำเร็จ - มีข้อมูล
  const factory PokemonState.success({
    required List<PokemonFreezed> pokemonList,
  }) = PokemonStateSuccess;

  /// เกิดข้อผิดพลาด
  const factory PokemonState.error({
    required String message,
  }) = PokemonStateError;
}