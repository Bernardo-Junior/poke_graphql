# poke_graphql

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## GraphQL
- Generate Types
. To generate types graphql to dart, first you create a lib/graphql/schema.graphql and add all types this
. After this create your queries/mutations and fragments in folders
    ex: lib/graphql/queries/fetch_pokemon.graphql
. After this create a build.yalm and add this:
targets:
  $default:
    builders:
      json_serializable:
        options:
          include_if_null: false
      artemis:
        options:
          scalar_mapping:
            - custom_parser_import: 'lib/graphql/coercers.dart'
              graphql_type: DateTime
              dart_type: DateTime
          #fragments_glob: lib/graphql/fragments/{**/*.graphql,*.graphql} # only if fragment files exist
          schema_mapping:
            - schema: lib/graphql/schema.graphql
              queries_glob: lib/graphql/{queries,mutations}/{**/*.graphql,*.graphql}
              output: lib/graphql/gen/api.graphql.dart
              naming_scheme: pathedWithFields

. Lastly run flutter packages pub run build_runner build --delete-conflicting-outputs to generate dart types

- current dependency: 
    artemis: ^7.0.0-beta.9 
    build_runner: ^2.0.2 
    json_serializable: ^4.1.1


