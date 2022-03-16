import 'package:artemis/artemis.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:json_annotation/json_annotation.dart' as json;
import 'package:poke_graphql/utils/is_debug.dart';

class ResponseData<T> {
  ResponseData({this.data, this.exception});

  T? data;
  OperationException? exception;

  /// Transforms a response data if it's not null
  /// and returns a wrapped [ResponseData]
  ResponseData<R> mapData<R>(R Function(T data) mapper) {
    return ResponseData(
      exception: exception,
      data: data != null ? mapper(data!) : null,
    );
  }
}

class GQLService {
  GQLService(this._client);

  final GraphQLClient _client;

  Future<ResponseData<T>> query<T, U extends json.JsonSerializable>(
    GraphQLQuery<T, U>? query, {
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
  }) async {
    assert(query != null, 'A query object must be provided');
    if (isDebug()) {
      print('Executing query: ${query!.operationName}');
    }

    final response = await _client.query(QueryOptions(
      variables: query!.getVariablesMap(),
      document: query.document,
      fetchPolicy: FetchPolicy.networkOnly,
      errorPolicy: errorPolicy,
    ));

    return ResponseData<T>(
      data: response.data != null ? query.parse(response.data!) : null,
      exception: response.exception,
    );
  }

  Future<ResponseData<T>> mutation<T, U extends json.JsonSerializable>(
    GraphQLQuery<T, U>? mutation, {
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
  }) async {
    assert(mutation != null, 'A mutation object must be provided');
    if (isDebug()) {
      print('Executing mutation: ${mutation!.operationName}');
    }

    final response = await _client.mutate(MutationOptions(
      variables: mutation!.getVariablesMap(),
      document: mutation.document,
      fetchPolicy: fetchPolicy,
      errorPolicy: errorPolicy,
    ));

    return ResponseData<T>(
      data: response.data != null ? mutation.parse(response.data!) : null,
      exception: response.exception,
    );
  }

  void resetCache() {
    _client.cache.store.reset();
  }
}
