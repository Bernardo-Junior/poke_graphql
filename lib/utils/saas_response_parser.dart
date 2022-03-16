import 'package:graphql_flutter/graphql_flutter.dart';

class SaasResponseParser extends ResponseParser {
  @override
  GraphQLError parseError(Map<String, dynamic> error) {
    return GraphQLError(
      message: error['message'] as String,
      path: error['path'] as List,
      locations: (error['locations'] as List?)
          ?.map(
            (dynamic error) => parseLocation(error as Map<String, dynamic>),
          )
          .toList(),
      extensions: {
        'code': error['code'],
        'message': error['message'],
        'isTrusted': error['isTrusted'],
      },
    );
  }
}
