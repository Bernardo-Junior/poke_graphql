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
        FetchPokemons$Query$Pokemons instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'classification': instance.classification,
      'types': instance.types,
      'maxCP': instance.maxCP,
      'maxHP': instance.maxHP,
    };

FetchPokemons$Query _$FetchPokemons$QueryFromJson(Map<String, dynamic> json) {
  return FetchPokemons$Query()
    ..pokemons = (json['pokemons'] as List<dynamic>?)
        ?.map((e) => e == null
            ? null
            : FetchPokemons$Query$Pokemons.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$FetchPokemons$QueryToJson(
        FetchPokemons$Query instance) =>
    <String, dynamic>{
      'pokemons': instance.pokemons?.map((e) => e?.toJson()).toList(),
    };

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
