import 'package:better_way/injector/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

GetIt injector = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: false, // default: true
  asExtension: false, // default
)
Future<void> configureDependencies() async => $initGetIt(injector);
