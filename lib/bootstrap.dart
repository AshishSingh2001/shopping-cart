import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'package:shopping_cart/app/app_observer.dart';

// import 'package:shopping_cart/utils/logger.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  // FlutterError.onError = (details) {
  //   AppLogger.instance.e(details.exceptionAsString());
  // };

  late Directory appDocDirectory;
  if (!kIsWeb) {
    appDocDirectory = await getApplicationDocumentsDirectory();
  }
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : Directory('${appDocDirectory.path}/bumbii'),
  );
  await runZonedGuarded(
    () async {
      await HydratedBlocOverrides.runZoned(
        () async => runApp(await builder()),
        blocObserver: AppBlocObserver(),
        storage: storage,
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
