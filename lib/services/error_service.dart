import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

enum SupportedErrorCodes {
  invalidSession,
  forbidden,
  authenticationFailed,
  deletedSession,
  emailAlreadyExists,
  emailNotVerified,
  internalServerError,
  // Special entry, only for client exceptions
  clientError
}

// We have a lot of error codes, but we care - and may use custom
// CODE behaviours - only for the mapped ones.
// Most of them already provide a trusted user friendly
// message and don't need to be treated differently.
final _supportedCodes = {
  'INVALID_SESSION': SupportedErrorCodes.invalidSession,
  'FORBIDDEN': SupportedErrorCodes.forbidden,
  'AUTHENTICATION_FAILED': SupportedErrorCodes.authenticationFailed,
  'DELETED_SESSION': SupportedErrorCodes.deletedSession,
  'EMAIL_ALREADY_EXISTS': SupportedErrorCodes.emailAlreadyExists,
  'EMAIL_NOT_VERIFIED': SupportedErrorCodes.emailNotVerified,
  'INTERNAL_SERVER_ERROR': SupportedErrorCodes.internalServerError,
};

class ServerRejection {
  ServerRejection({
    required this.isTrusted,
    required this.code,
    required this.message,
  });

  factory ServerRejection.fromRaw(Map<String, dynamic> extensions) {
    final rawCode = extensions['code'] as String;

    return ServerRejection(
      isTrusted: extensions['isTrusted'] as bool? ?? false,
      code: _supportedCodes[rawCode],
      message: extensions['message'] as String,
    );
  }

  final bool isTrusted;
  final SupportedErrorCodes? code;
  final String? message;
}

class ErrorService {
  ErrorService({this.globalHandledCodes = const []});

  final List<SupportedErrorCodes> globalHandledCodes;

  List<ServerRejection> parseList(List<GraphQLError> error) {
    final rejections = error.map((e) {
      return ServerRejection.fromRaw(e.extensions!);
    });

    if (rejections.isEmpty) {
      return [
        ServerRejection(
          message: error.isNotEmpty ? error.first.message : null,
          isTrusted: false,
          code: SupportedErrorCodes.clientError,
        )
      ];
    }

    return rejections.toList();
  }

  List<ServerRejection> parse(OperationException error) {
    final rejections = error.graphqlErrors.map((e) {
      return ServerRejection.fromRaw(e.extensions!);
    });

    if (rejections.isEmpty) {
      return [
        ServerRejection(
          message: error.linkException?.originalException?.toString(),
          isTrusted: false,
          code: SupportedErrorCodes.clientError,
        )
      ];
    }

    return rejections.toList();
  }

  bool isGlobalHandled(ServerRejection error) {
    return globalHandledCodes.contains(error.code);
  }

  String? extractMessage(ServerRejection? error) {
    final codeDescription =
        error?.code != null ? describeEnum(error!.code!) : 'UNKNOWN';

    if (error == null) {
      return 'Erro desconhecido (UNKNOWN)';
    }

    if (error.isTrusted) {
      return error.message;
    }

    if (error.code == SupportedErrorCodes.internalServerError) {
      return 'Erro interno no servidor, contate o suporte ($codeDescription)';
    }

    final message = error.message;
    if (message != null) {
      final isNetworkError = RegExp(
        '(Network)?\s?(request)?\s?(failed|errors?)?',
        caseSensitive: false,
        multiLine: true,
      ).hasMatch(message);

      if (isNetworkError) {
        return 'Não foi possível conectar-se ao servidor';
      }

      // When graphql finds a wrong field sent
      if (message.contains('Unknown argument')) {
        return 'Erro de resposta, seu aplicativo pode estar desatualizado';
      }
    }

    return 'Erro desconhecido ($codeDescription)';
  }
}
