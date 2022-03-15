// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchPokemons$Query$Pokemons _$FetchPokemons$Query$PokemonsFromJson(
    Map<String, dynamic> json) {
  return FetchPokemons$Query$Pokemons()
    ..id = json['id'] as String
    ..name = json['name'] as String?
    ..image = json['image'] as String?
    ..classification = json['classification'] as String?
    ..types =
        (json['types'] as List<dynamic>?)?.map((e) => e as String?).toList()
    ..maxCP = json['maxCP'] as int?
    ..maxHP = json['maxHP'] as int?;
}

Map<String, dynamic> _$FetchPokemons$Query$PokemonsToJson(
    FetchPokemons$Query$Pokemons instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('image', instance.image);
  writeNotNull('classification', instance.classification);
  writeNotNull('types', instance.types);
  writeNotNull('maxCP', instance.maxCP);
  writeNotNull('maxHP', instance.maxHP);
  return val;
}

FetchPokemons$Query _$FetchPokemons$QueryFromJson(Map<String, dynamic> json) {
  return FetchPokemons$Query()
    ..pokemons = (json['pokemons'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : FetchPokemons$Query$Pokemons.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$FetchPokemons$QueryToJson(FetchPokemons$Query instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pokemons', instance.pokemons?.map((e) => e?.toJson()).toList());
  return val;
}

FetchPokemonsArguments _$FetchPokemonsArgumentsFromJson(
    Map<String, dynamic> json) {
  return FetchPokemonsArguments(
    quantity: json['quantity'] as int,
  );
}

Map<String, dynamic> _$FetchPokemonsArgumentsToJson(
        FetchPokemonsArguments instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
    };
