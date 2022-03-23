import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
// ignore: todo
// TODO: if your app use User Agent, use this.
// import 'package:package_info_plus/package_info_plus.dart';
import 'package:poke_graphql/screens/home/home_screen.dart';
import 'package:poke_graphql/services/auth_service.dart';
import 'package:get/get.dart';

import 'services/error_service.dart';
import 'services/gql_service.dart';
import 'utils/adaptive_dialog.dart';
import 'utils/graphql_client_provider.dart';
import 'utils/is_debug.dart';

class PokeGraphqlController {
  void handleSessionDrop(ServerRejection error) async {
    final client = Get.find<GQLService>();
    final auth = Get.find<AuthService>();

    client.resetCache();
    await auth.clearToken();

    Get.offAll(() => HomeScreen());
    unawaited(Get.dialog(AdaptiveDialog.alert(
      title: const Text('Conta desconectada'),
      content: Text(error.message!),
    )));
  }

  Future registerServices() async {
    // ignore: todo
    // TODO: if your app use User Agent, use this.
    // PackageInfo packageInfo = await PackageInfo.fromPlatform();
    final dio = Get.put(Dio())
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (options, handler) async {
            // ignore: todo
            // TODO: if your app use User Agent, use this and Token.
            // final auth = AuthService();
            // if (await auth.hasToken()) {
            //   final token = auth.hasToken();

            //   options.headers['user-agent'] =
            //       'AppNameMobile/${packageInfo.version}:${packageInfo.buildNumber}';

            //   // options.headers['Authorization'] = token;

            //   return handler.next(options);
            // } else {
            //   print('Token Error');
            // }

            return handler.next(options);
          },
        ),
      );

    if (isDebug()) {
      dio.interceptors.add(LogInterceptor());
    }

    final client = Get.put<GraphQLClient>(
      buildClient(
        dio: dio,
        uri: 'https://graphql-pokemon2.vercel.app/',
        onGraphQLError: (request, forward, response) {
          final service = ErrorService();
          final error = service.parseList(response.errors!).first;

          if (error.code == SupportedErrorCodes.invalidSession ||
              error.code == SupportedErrorCodes.deletedSession) {
            handleSessionDrop(error);
          }

          return null;
        },
      ),
    );

    Get.put(GQLService(client));
  }
}
