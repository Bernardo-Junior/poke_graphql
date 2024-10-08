import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:json_annotation/json_annotation.dart' as json;

class ResponseData<T> {
  ResponseData({this.data, this.exception});

  T? data;
  OperationException? exception;

  /// Transforms a response data if it's not null
  /// and returns a wrapped [ResponseData]
  ResponseData<R> mapData<R>(R Function(T data) mapper) {
    return ResponseData(
      exception: exception,
      data: data != null ? mapper(data as T) : null,
    );
  }
}

class GQLService {
  GQLService(this._client);

  final GraphQLClient _client;

  Future<ResponseData<T>> query<T, U extends json.JsonSerializable>(
    QueryOptions<T>? query, {
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
  }) async {
    assert(query != null, 'A query object must be provided');

    final response = await _client.query(
      QueryOptions(
        variables: query!.variables,
        document: query.document,
        fetchPolicy: FetchPolicy.networkOnly,
        errorPolicy: errorPolicy,
      ),
    );

    return ResponseData<T>(
      data: response.data != null ? query.parserFn(response.data!) : null,
      exception: response.exception,
    );
  }

  Future<ResponseData<T>> mutation<T, U extends json.JsonSerializable>(
    QueryOptions<T>? mutation, {
    FetchPolicy? fetchPolicy,
    ErrorPolicy? errorPolicy,
  }) async {
    assert(mutation != null, 'A mutation object must be provided');

    final response = await _client.mutate(MutationOptions(
      variables: mutation!.variables,
      document: mutation.document,
      fetchPolicy: fetchPolicy,
      errorPolicy: errorPolicy,
    ));

    return ResponseData<T>(
      data: response.data != null ? mutation.parserFn(response.data!) : null,
      exception: response.exception,
    );
  }

  void resetCache() {
    _client.cache.store.reset();
  }
}
