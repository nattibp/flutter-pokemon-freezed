import 'pokemon_freezed.dart';

void main() {
  final pikachu = PokemonFreezed(
    name: 'pikachu',
    url: 'https://pokeapi.co/api/v2/pokemon/25/',
  );

  final raichu = pikachu.copyWith(
    name: 'raichu',
    url: 'https://pokeapi.co/api/v2/pokemon/26/',
  );

  print(pikachu.name); // pikachu
  print(raichu.name);  // raichu

  print(pikachu == pikachu.copyWith()); // true
  print(pikachu == raichu); // false
}
