import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection_configuration.config.dart';

final injectable = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(injectable);
