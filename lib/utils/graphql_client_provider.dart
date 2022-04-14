import 'package:dio/dio.dart';
import 'package:gql_dio_link/gql_dio_link.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'saas_response_parser.dart';

String? _uuidFromObject(Object object) {
  if (object is Map<String, Object>) {
    final typeName = object['__typename'] as String?;
    final id = object['id'] as String?;
    if (typeName != null && id != null) {
      return [typeName, id].join('/');
    }
  }
  return null;
}

GraphQLClient buildClient({
  required Dio dio,
  required String uri,
  required ErrorHandler onGraphQLError,
}) {
  final errorLink = ErrorLink(
    onGraphQLError: onGraphQLError,
    onException: (request, forward, exception) async* {
      throw exception;
    },
  );
  final dioLink = DioLink(
    uri,
    client: dio,
    parser: SaasResponseParser(),
  );
  final cache = GraphQLCache(dataIdFromObject: _uuidFromObject);

  return GraphQLClient(
    cache: cache,
    link: errorLink.concat(dioLink),
  );
}
