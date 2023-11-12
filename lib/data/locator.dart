import 'package:get_it/get_it.dart';
import 'package:unlock/generated/l10n.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => S());
}