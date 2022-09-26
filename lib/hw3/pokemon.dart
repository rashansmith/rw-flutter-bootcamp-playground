import 'dart:math';

// Enums for Pokemon Type
enum Type {
  fire,
  grass,
  water
}

class Pokemon {
  String name;
  int hitPoints;
  Enum type;

  Pokemon(this.name,
      this.type,
      this.hitPoints);

  // List of pokemon
  static List<Pokemon> pokemonList = [
    Pokemon(
        'Charmander',
        Type.fire,
        10
    ),
    Pokemon(
        'Bulbasaur',
        Type.grass,
        10
    ),
    Pokemon(
        'Squirtle',
        Type.water,
        10
    ),
  ];

  // Execute pokemon battle until one pokemon is left
  static void pokemonBattle() {
    do {
      randomPokemonAttack();
    }
    while (winnerFound() == false);
  }

  // Function that inflict 1 HP damage
  static void inflictDamage(String name) {
    for (var pokemon in pokemonList) {
      if (pokemon.name == name) {
        pokemon.hitPoints -= 1;
      }
    }
  }

  // Function to find when a winner has been set
  static bool winnerFound() {
    var stillPlaying = 0;
    var winner;
    for (var pokemon in pokemonList) {
      if (pokemon.hitPoints > 0) {
        stillPlaying += 1;
      }
    }

    if (stillPlaying == 1) {
      print("A VICTOR EMERGES!");
      for (var pokemon in pokemonList) {
        if(pokemon.hitPoints >= 1) {
          var name = pokemon.name;
          print('$name has won the battle.');
        }
        }

      return true;
    } else {
      return false;
    }
  }

  // Function to generate random Pokemon attacks/battles
  static void randomPokemonAttack() {
    var rng = Random();

    var randomOpponentIndex = rng.nextInt(pokemonList.length);
    var opponent = pokemonList.elementAt(randomOpponentIndex);

    var randomDefenseIndex = rng.nextInt(pokemonList.length);
    var defense = pokemonList.elementAt(randomDefenseIndex);

    if (opponent != defense && opponent.hitPoints != 0 && defense.hitPoints != 0 ) {
      inflictDamage(defense.name);
      var op = '${opponent.name}(${opponent.hitPoints})';
      var def = '${defense.name}(${defense.hitPoints})';
      print('$op attacks $def');
    }
  }
}


