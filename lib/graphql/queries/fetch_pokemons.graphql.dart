import '../fragments/pokemos.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class VariablesQueryFetchPokemons {
  factory VariablesQueryFetchPokemons({required int quantity}) =>
      VariablesQueryFetchPokemons._({
        r'quantity': quantity,
      });

  VariablesQueryFetchPokemons._(this._$data);

  factory VariablesQueryFetchPokemons.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    return VariablesQueryFetchPokemons._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quantity => (_$data['quantity'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    return result$data;
  }

  CopyWithVariablesQueryFetchPokemons<VariablesQueryFetchPokemons>
      get copyWith => CopyWithVariablesQueryFetchPokemons(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is VariablesQueryFetchPokemons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    return Object.hashAll([l$quantity]);
  }
}

abstract class CopyWithVariablesQueryFetchPokemons<TRes> {
  factory CopyWithVariablesQueryFetchPokemons(
    VariablesQueryFetchPokemons instance,
    TRes Function(VariablesQueryFetchPokemons) then,
  ) = _CopyWithImplVariablesQueryFetchPokemons;

  factory CopyWithVariablesQueryFetchPokemons.stub(TRes res) =
      _CopyWithStubImplVariablesQueryFetchPokemons;

  TRes call({int? quantity});
}

class _CopyWithImplVariablesQueryFetchPokemons<TRes>
    implements CopyWithVariablesQueryFetchPokemons<TRes> {
  _CopyWithImplVariablesQueryFetchPokemons(
    this._instance,
    this._then,
  );

  final VariablesQueryFetchPokemons _instance;

  final TRes Function(VariablesQueryFetchPokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? quantity = _undefined}) =>
      _then(VariablesQueryFetchPokemons._({
        ..._instance._$data,
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
      }));
}

class _CopyWithStubImplVariablesQueryFetchPokemons<TRes>
    implements CopyWithVariablesQueryFetchPokemons<TRes> {
  _CopyWithStubImplVariablesQueryFetchPokemons(this._res);

  TRes _res;

  call({int? quantity}) => _res;
}

class QueryFetchPokemons {
  QueryFetchPokemons({
    this.pokemons,
    this.$__typename = 'Query',
  });

  factory QueryFetchPokemons.fromJson(Map<String, dynamic> json) {
    final l$pokemons = json['pokemons'];
    final l$$__typename = json['__typename'];
    return QueryFetchPokemons(
      pokemons: (l$pokemons as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : FragmentPokemonItem.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<FragmentPokemonItem?>? pokemons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemons = pokemons;
    _resultData['pokemons'] = l$pokemons?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemons = pokemons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemons == null ? null : Object.hashAll(l$pokemons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is QueryFetchPokemons) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemons = pokemons;
    final lOther$pokemons = other.pokemons;
    if (l$pokemons != null && lOther$pokemons != null) {
      if (l$pokemons.length != lOther$pokemons.length) {
        return false;
      }
      for (int i = 0; i < l$pokemons.length; i++) {
        final l$pokemons$entry = l$pokemons[i];
        final lOther$pokemons$entry = lOther$pokemons[i];
        if (l$pokemons$entry != lOther$pokemons$entry) {
          return false;
        }
      }
    } else if (l$pokemons != lOther$pokemons) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtensionQueryFetchPokemons on QueryFetchPokemons {
  CopyWithQueryFetchPokemons<QueryFetchPokemons> get copyWith =>
      CopyWithQueryFetchPokemons(
        this,
        (i) => i,
      );
}

abstract class CopyWithQueryFetchPokemons<TRes> {
  factory CopyWithQueryFetchPokemons(
    QueryFetchPokemons instance,
    TRes Function(QueryFetchPokemons) then,
  ) = _CopyWithImplQueryFetchPokemons;

  factory CopyWithQueryFetchPokemons.stub(TRes res) =
      _CopyWithStubImplQueryFetchPokemons;

  TRes call({
    List<FragmentPokemonItem?>? pokemons,
    String? $__typename,
  });
  TRes pokemons(
      Iterable<FragmentPokemonItem?>? Function(
              Iterable<CopyWithFragmentPokemonItem<FragmentPokemonItem>?>?)
          _fn);
}

class _CopyWithImplQueryFetchPokemons<TRes>
    implements CopyWithQueryFetchPokemons<TRes> {
  _CopyWithImplQueryFetchPokemons(
    this._instance,
    this._then,
  );

  final QueryFetchPokemons _instance;

  final TRes Function(QueryFetchPokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(QueryFetchPokemons(
        pokemons: pokemons == _undefined
            ? _instance.pokemons
            : (pokemons as List<FragmentPokemonItem?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemons(
          Iterable<FragmentPokemonItem?>? Function(
                  Iterable<CopyWithFragmentPokemonItem<FragmentPokemonItem>?>?)
              _fn) =>
      call(
          pokemons: _fn(_instance.pokemons?.map((e) => e == null
              ? null
              : CopyWithFragmentPokemonItem(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImplQueryFetchPokemons<TRes>
    implements CopyWithQueryFetchPokemons<TRes> {
  _CopyWithStubImplQueryFetchPokemons(this._res);

  TRes _res;

  call({
    List<FragmentPokemonItem?>? pokemons,
    String? $__typename,
  }) =>
      _res;

  pokemons(_fn) => _res;
}

const documentNodeQueryFetchPokemons = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchPokemons'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'quantity')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemons'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'quantity')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PokemonItem'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionPokemonItem,
]);
QueryFetchPokemons _parserFnQueryFetchPokemons(Map<String, dynamic> data) =>
    QueryFetchPokemons.fromJson(data);
typedef OnQueryCompleteQueryFetchPokemons = FutureOr<void> Function(
  Map<String, dynamic>?,
  QueryFetchPokemons?,
);

class OptionsQueryFetchPokemons
    extends graphql.QueryOptions<QueryFetchPokemons> {
  OptionsQueryFetchPokemons({
    String? operationName,
    required VariablesQueryFetchPokemons variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    QueryFetchPokemons? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryCompleteQueryFetchPokemons? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFnQueryFetchPokemons(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchPokemons,
          parserFn: _parserFnQueryFetchPokemons,
        );

  final OnQueryCompleteQueryFetchPokemons? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptionsQueryFetchPokemons
    extends graphql.WatchQueryOptions<QueryFetchPokemons> {
  WatchOptionsQueryFetchPokemons({
    String? operationName,
    required VariablesQueryFetchPokemons variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    QueryFetchPokemons? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryFetchPokemons,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFnQueryFetchPokemons,
        );
}

class FetchMoreOptionsQueryFetchPokemons extends graphql.FetchMoreOptions {
  FetchMoreOptionsQueryFetchPokemons({
    required graphql.UpdateQuery updateQuery,
    required VariablesQueryFetchPokemons variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFetchPokemons,
        );
}

extension ClientExtensionQueryFetchPokemons on graphql.GraphQLClient {
  Future<graphql.QueryResult<QueryFetchPokemons>> queryFetchPokemons(
          OptionsQueryFetchPokemons options) async =>
      await this.query(options);
  graphql.ObservableQuery<QueryFetchPokemons> watchQueryFetchPokemons(
          WatchOptionsQueryFetchPokemons options) =>
      this.watchQuery(options);
  void writeQueryFetchPokemons({
    required QueryFetchPokemons data,
    required VariablesQueryFetchPokemons variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFetchPokemons),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  QueryFetchPokemons? readQueryFetchPokemons({
    required VariablesQueryFetchPokemons variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFetchPokemons),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : QueryFetchPokemons.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<QueryFetchPokemons> useQueryFetchPokemons(
        OptionsQueryFetchPokemons options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<QueryFetchPokemons> useWatchQueryFetchPokemons(
        WatchOptionsQueryFetchPokemons options) =>
    graphql_flutter.useWatchQuery(options);

class QueryFetchPokemonsWidget
    extends graphql_flutter.Query<QueryFetchPokemons> {
  QueryFetchPokemonsWidget({
    widgets.Key? key,
    required OptionsQueryFetchPokemons options,
    required graphql_flutter.QueryBuilder<QueryFetchPokemons> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}
